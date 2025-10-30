ALTER TABLE dbo.PatientInformation
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.DiagStaging
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.DiagStagingHN
ADD FOREIGN KEY (DiagStaging_ID)
REFERENCES dbo.DiagStaging(DiagStaging_ID)
GO
ALTER TABLE dbo.DiagStagingProst
ADD FOREIGN KEY (DiagStaging_ID)
REFERENCES dbo.DiagStaging(DiagStaging_ID)
GO
ALTER TABLE dbo.DiagStagingTreatmentOverview
ADD FOREIGN KEY (DiagStaging_ID)
REFERENCES dbo.DiagStaging(DiagStaging_ID)
GO

ALTER TABLE dbo.PatientTreatmentOutcome
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.ProviderReportedToxicity
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.PRO
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.PerformanceScore
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.RTCourseTargetDose
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO

ALTER TABLE dbo.RTCourseEvent
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO

ALTER TABLE dbo.RTCourseSession
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO

ALTER TABLE dbo.RTPhase
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO

ALTER TABLE dbo.RTPhaseTargetDose
ADD FOREIGN KEY (RTPhase_ID)
REFERENCES dbo.RTPhase(RTPhase_ID)
GO

ALTER TABLE dbo.RTPrescription
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO

ALTER TABLE dbo.RTPrescriptionTargetDose
ADD FOREIGN KEY (RTPrescription_ID)
REFERENCES dbo.RTPrescription(RTPrescription_ID)
GO

ALTER TABLE dbo.RTPrescriptionDoseObjective
ADD FOREIGN KEY (RTPrescription_ID)
REFERENCES dbo.RTPrescription(RTPrescription_ID)
GO

ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO

ALTER TABLE dbo.RTTreatedPlanTargetDose
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.ReirradiationEvaluation
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.ReirradiationEvaluation_DVHMetric
ADD FOREIGN KEY (ReirradiationEvaluation_ID)
REFERENCES dbo.ReirradiationEvaluation(ReirradiationEvaluation_ID)
GO

ALTER TABLE dbo.RTTreatedPlanDetailsXRT
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTTreatedPlanDetailsBrachytherapy
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTTreatedPlanDetailsRadiopharmaceutical
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTTreatedPlanDetailsHadrons
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTTreatedFieldDetailsHadrons
ADD FOREIGN KEY (RTTreatedPlanDetailsHadrons_ID)
REFERENCES dbo.RTTreatedPlanDetailsHadrons(RTTreatedPlanDetailsHadrons_ID)
GO

ALTER TABLE dbo.RTTreatedPlanFraction
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTTreatedFieldFraction
ADD FOREIGN KEY (RTTreatedPlanFraction_ID)
REFERENCES dbo.RTTreatedPlanFraction(RTTreatedPlanFraction_ID)
GO

ALTER TABLE dbo.DVHCurve
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.DVHMetric
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTPlanningStructureSet
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTPlanningStructure
ADD FOREIGN KEY (RTPlanningStructureSet_ID)
REFERENCES dbo.RTPlanningStructureSet(RTPlanningStructureSet_ID)
GO

ALTER TABLE dbo.Image
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.LabResult
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.SupportiveMedication
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.FunctionTestResult
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.SysTherCourse
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.SysTherCycle
ADD FOREIGN KEY (SysTherCourse_ID)
REFERENCES dbo.SysTherCourse(SysTherCourse_ID)
GO

ALTER TABLE dbo.SysTherCycleDrugsChemo
ADD FOREIGN KEY (SysTherCycle_ID)
REFERENCES dbo.SysTherCycle(SysTherCycle_ID)
GO

ALTER TABLE dbo.SysTherCycleDrugsHT
ADD FOREIGN KEY (SysTherCycle_ID)
REFERENCES dbo.SysTherCycle(SysTherCycle_ID)
GO

ALTER TABLE dbo.SysTherCycleDrugsImmuno
ADD FOREIGN KEY (SysTherCycle_ID)
REFERENCES dbo.SysTherCycle(SysTherCycle_ID)
GO

ALTER TABLE dbo.InterventionalProcedure
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.PatientEncounter
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.Charge
ADD FOREIGN KEY (Patient_ID)
REFERENCES dbo.Patient(Patient_ID)
GO

ALTER TABLE dbo.HCO_Site
ADD FOREIGN KEY (HCO_ID)
REFERENCES dbo.HCO(HCO_ID)
GO

ALTER TABLE dbo.HCO_SiteCount
ADD FOREIGN KEY (HCO_Site_ID)
REFERENCES dbo.HCO_Site(HCO_Site_ID)
GO

ALTER TABLE dbo.HCO_SiteUnitCount
ADD FOREIGN KEY (HCO_Site_ID)
REFERENCES dbo.HCO_Site(HCO_Site_ID)
GO

ALTER TABLE dbo.HCO_SiteUnitUtilizationCount
ADD FOREIGN KEY (HCO_Site_ID)
REFERENCES dbo.HCO_Site(HCO_Site_ID)
GO

ALTER TABLE dbo.HCO_SiteCapabilities
ADD FOREIGN KEY (HCO_Site_ID)
REFERENCES dbo.HCO_Site(HCO_Site_ID)
GO

ALTER TABLE dbo.HCO_SiteStaff
ADD FOREIGN KEY (HCO_Site_ID)
REFERENCES dbo.HCO_Site(HCO_Site_ID)
GO

ALTER TABLE dbo.HCO_SiteImgTrtUnitInfo
ADD FOREIGN KEY (HCO_Site_ID)
REFERENCES dbo.HCO_Site(HCO_Site_ID)
GO

ALTER TABLE dbo.RTPlanningStructureSet
ADD FOREIGN KEY (Image_ID)
REFERENCES dbo.Image(Image_ID)
GO