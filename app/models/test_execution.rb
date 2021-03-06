
class TestExecution
  include Mongoid::Document
  include Mongoid::Timestamps::Created
 
  belongs_to :product_test
  embeds_many :execution_errors
  field :required_modules, type: Array
  field :expected_results, type: Hash
  field :reported_results, type: Hash
  field :matched_results, type: Hash
  
  field :status, type: Symbol
  field :state, type: Symbol
  field :file_ids, type: Array

  scope :ordered_by_date, order_by(:created_at => :desc)
  scope :order_by_state, order_by(:state => :asc)

  state_machine :state , :initial=> :pending do
    
    event :failed do
      transition :pending => :failed
    end
    
    event :pass do
      transition :pending => :passed
    end
      
    event :force_pass do
      transition all => :passed
    end
      
    event :force_fail do
      transition all => :failed
    end

    event :reset do
      transition all => :pending
    end
       
  end

  def execution_date
    self.created_at
  end

  def count_errors
    execution_errors.where({:msg_type=>:error}).count
  end
  
  def count_warnings
     execution_errors.where({:msg_type=>:warning}).count
  end

  # Get the expected result for a particular measure
  def expected_result(measure)
    (expected_results || {})[measure.key] || {}
  end
  
  # Get the expected result for a particular measure
  def reported_result(measure)
    (reported_results || {})[measure.key] || {}
  end
  
  def passing?
    state == :passed
  end
  
  def failing
    state == :failed
  end
  
  def incomplete?
    (!passing? && !failing)
  end
  
  def files
    return [] if self.file_ids.nil? || self.file_ids.length == 0
     Cypress::ArtifactManager.get_artifacts(self.file_ids)
  end

  def passing_measures
     m_ids = execution_errors.collect {|ee| ee.measure_id}
     m_ids.compact!
     mes = product_test.measures.collect{|m| m_ids.index(m.key) ? nil : m }
     mes.compact!
     mes
  end

  def failing_measures
     m_ids = execution_errors.collect {|ee| ee.measure_id}
     m_ids.compact!
     mes = product_test.measures.collect {|m| m_ids.index(m.key) ? m : nil}
     mes.compact!
     mes
  end
  
end
