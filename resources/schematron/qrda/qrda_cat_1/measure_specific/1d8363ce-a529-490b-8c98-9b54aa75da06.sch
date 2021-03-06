<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron C:/Users/rickg/workspaces-svn/ClientProjects/QRDATesting/measure-specific-schematron/schematron.xsd">
	<ns uri="urn:hl7-org:v3" prefix="cda"/>
	<ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
	<phase id="warnings">
		<active pattern="p"/>
	</phase>
	<pattern id="p">
		<rule context="/cda:ClinicalDocument">
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.3.353']">For QDT pattern 'Diagnosis, Active: End Stage Renal Disease', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.3.353". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.1003.104.12.1016']">For QDT pattern 'Diagnosis, Active: Hypertension', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.1003.104.12.1016". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.3.378']">For QDT pattern 'Diagnosis, Active: Pregnancy', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.3.378". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.23'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.1003.101.12.1056']">For QDT pattern 'Encounter, Performed: Blood Pressure Visit', QRDA template id "2.16.840.1.113883.10.20.24.3.23" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.1003.101.12.1056". </assert>
			<!--
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.101'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.560.100.4']">For QDT pattern 'Patient Characteristic: birth date', QRDA template id "2.16.840.1.113883.10.20.24.3.101" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.560.100.4". </assert>
			-->
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.1003.121.12.1013']">For QDT pattern 'Physical Exam, Finding: Delta systolic blood pressure', QRDA template id "2.16.840.1.113883.10.20.24.3.57" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.1003.121.12.1013". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.57'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.3.1032']">For QDT pattern 'Physical Exam, Finding: Systolic Blood Pressure', QRDA template id "2.16.840.1.113883.10.20.24.3.57" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.3.1032". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.3.1083']">For QDT pattern 'Procedure, Performed: Hemodialysis', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.3.1083". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.526.3.1084']">For QDT pattern 'Procedure, Performed: Peritoneal Dialysis', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.526.3.1084". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.64'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.1003.109.12.1002']">For QDT pattern 'Procedure, Performed: Renal Transplant', QRDA template id "2.16.840.1.113883.10.20.24.3.64" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.1003.109.12.1002". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.114222.4.11.3591']">For QDT pattern 'Patient Characteristic Payer: Payer', QRDA template id "2.16.840.1.113883.10.20.24.3.55" SHOULD be present and SHOULD be bound to value set "2.16.840.1.114222.4.11.3591". </assert>
		</rule>
	</pattern>
</schema>