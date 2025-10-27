ALTER TABLE dbo.Patient
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)   
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (RTPrescription_ID)
REFERENCES dbo.RTPrescription(RTPrescription_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (DiagStaging_ID)
REFERENCES dbo.DiagStaging(DiagStaging_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (ReIrradiationEvaluation_ID)
REFERENCES dbo.ReIrradiationEvaluation(ReIrradiationEvaluation_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (PatientTreatmentOutcome_ID)
REFERENCES dbo.PatientTreatmentOutcome(PatientTreatmentOutcome_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (PlanningStructureSet_ID)
REFERENCES dbo.RTPlanningStructureSet(RTPlanningStructureSet_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (ProviderReportedToxicity_ID)
REFERENCES dbo.ProviderReportedToxicity(ProviderReportedToxicity_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (PRO_ID)
REFERENCES dbo.PRO(PRO_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (PatientInformation_ID)
REFERENCES dbo.PatientInformation(PatientInformation_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (LabResult_ID)
REFERENCES dbo.LabResult(LabResult_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (SupportiveMedication_ID)
REFERENCES dbo.SupportiveMedication(SupportiveMedication_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (SysTherCourse_ID)
REFERENCES dbo.SysTherCourse(SysTherCourse_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (InterventionalProcedure_ID)
REFERENCES dbo.InterventionalProcedure(InterventionalProcedure_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (Charge_ID)
REFERENCES dbo.Charge(Charge_ID)
GO
ALTER TABLE dbo.Patient
ADD FOREIGN KEY (PatientEncounter_ID)
REFERENCES dbo.PatientEncounter(PatientEncounter_ID)
GO

ALTER TABLE dbo.DiagStaging
ADD FOREIGN KEY (DiagStagingHN_ID)
REFERENCES dbo.DiagStagingHN(DiagStagingHN_ID)
GO

ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (DiagStaging_ID)
REFERENCES dbo.DiagStaging(DiagStaging_ID)
GO
ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (RTPrescription_ID)
REFERENCES dbo.RTPrescription(RTPrescription_ID)
GO
ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO
ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (RTCourseTargetDose_ID)
REFERENCES dbo.RTCourseTargetDose(RTCourseTargetDose_ID)
GO
ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (RTCourseSession_ID)
REFERENCES dbo.RTCourseSession(RTCourseSession_ID)
GO
ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (RTCourseEvent_ID)
REFERENCES dbo.RTCourseEvent(RTCourseEvent_ID)
GO
ALTER TABLE dbo.RTCourse
ADD FOREIGN KEY (RTPhase_ID)
REFERENCES dbo.RTPhase(RTPhase_ID)
GO

ALTER TABLE dbo.RTCourseSession
ADD FOREIGN KEY (RTTreatedPlanFraction_ID)
REFERENCES dbo.RTTreatedPlanFraction(RTTreatedPlanFraction_ID)
GO

ALTER TABLE dbo.RTPrescription
ADD FOREIGN KEY (RTPrescriptionTargetDose_ID)
REFERENCES dbo.RTPrescriptionTargetDose(RTPrescriptionTargetDose_ID)
GO

ALTER TABLE dbo.RTPrescription
ADD FOREIGN KEY (RTPrescriptionDoseObjective_ID)
REFERENCES dbo.RTPrescriptionDoseObjective(RTPrescriptionDoseObjective_ID)
GO
ALTER TABLE dbo.RTPrescription
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO

ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (RTPlanningStructureSet_ID)
REFERENCES dbo.RTPlanningStructureSet(RTPlanningStructureSet_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (DVHCurve_ID)
REFERENCES dbo.DVHCurve(DVHCurve_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (DVHMetric_ID)
REFERENCES dbo.DVHMetric(DVHMetric_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (RTTreatedPlanDetailsXRT_ID)
REFERENCES dbo.RTTreatedPlanDetailsXRT(RTTreatedPlanDetailsXRT_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (RTTreatedPlanDetailsBrachytherapy_ID)
REFERENCES dbo.RTTreatedPlanDetailsBrachytherapy(RTTreatedPlanDetailsBrachytherapy_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (RTTreatedPlanDetailsHadrons_ID)
REFERENCES dbo.RTTreatedPlanDetailsHadrons(RTTreatedPlanDetailsHadrons_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (RTPrescription_ID)
REFERENCES dbo.RTPrescription(RTPrescription_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (Image_ID)
REFERENCES dbo.Image(Image_ID)
GO
ALTER TABLE dbo.RTTreatedPlan
ADD FOREIGN KEY (RTTreatedPlanTargetDose_ID)
REFERENCES dbo.RTTreatedPlanTargetDose(RTTreatedPlanTargetDose_ID)
GO

ALTER TABLE dbo.RTTreatedPlanFraction
ADD FOREIGN KEY (RTTreatedFieldFraction_ID)
REFERENCES dbo.RTTreatedFieldFraction(RTTreatedFieldFraction_ID)
GO

ALTER TABLE dbo.ReirradiationEvaluation
ADD FOREIGN KEY (RTTreatedPlan_ID)
REFERENCES dbo.RTTreatedPlan(RTTreatedPlan_ID)
GO
ALTER TABLE dbo.ReirradiationEvaluation
ADD FOREIGN KEY (ReirradiationEvaluation_DVHMetric_ID)
REFERENCES dbo.ReirradiationEvaluation_DVHMetric(ReirradiationEvaluation_DVHMetric_ID)
GO

ALTER TABLE dbo.DVHCurve
ADD FOREIGN KEY (DVHMetric_ID)
REFERENCES dbo.DVHMetric(DVHMetric_ID)
GO

ALTER TABLE dbo.RTPlanningStructureSet
ADD FOREIGN KEY (RTPlanningStructure_ID)
REFERENCES dbo.RTPlanningStructure(RTPlanningStructure_ID)
GO

ALTER TABLE dbo.Image
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO
ALTER TABLE dbo.Image
ADD FOREIGN KEY (RTCourseSession_ID)
REFERENCES dbo.RTCourseSession(RTCourseSession_ID)
GO

ALTER TABLE dbo.InterventionalProcedure
ADD FOREIGN KEY (RTCourse_ID)
REFERENCES dbo.RTCourse(RTCourse_ID)
GO
ALTER TABLE dbo.InterventionalProcedure
ADD FOREIGN KEY (SysTherCourse_ID)
REFERENCES dbo.SysTherCourse(SysTherCourse_ID)
GO

ALTER TABLE dbo.RTPhase
ADD FOREIGN KEY (RTPhaseTargetDose_ID)
REFERENCES dbo.RTPhaseTargetDose(RTPhaseTargetDose_ID)
GO