SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
     [Patient_ID] [int] IDENTITY(1,1) NOT NULL,
[RTCourse_ID][int] NULL,
[RTPrescription_ID][int] NULL,
[DiagStaging_ID][int] NULL,
[RTTreatedPlan_ID][int] NULL,
[ReIrradiationEvaluation_ID][int] NULL,
[PatientTreatmentOutcome_ID][int] NULL,
[PlanningStructureSet_ID][int] NULL,
[ProviderReportedToxicity_ID][int] NULL,
[PRO_ID][int] NULL,
[PatientInformation_ID][int] NULL,
[LabResult_ID][int] NULL,
[SupportiveMedication_ID][int] NULL,
[SysTherCourse_ID][int] NULL,
[InterventionalProcedure_ID][int] NULL,
[Charge_ID][int] NULL,
     [Patient_MRN][varchar](50) NULL,
     [Patient_AnonPatID][varchar](50) NULL,
     [Patient_PatIDS][varchar](50) NULL,
     [Patient_DateOfBirth][varchar](50) NULL,
     [Patient_YearOfBirth][int] NULL,
     [Patient_DateOfDeath][varchar](50) NULL,
     [Patient_AgeAtDeath][float] NULL,
     [Patient_CauseOfDeath][varchar](50) NULL,
     [Patient_CauseOfDeathAttribution][varchar](50) NULL,
     [Patient_SexAtBirth][varchar](50) NULL,
     [Patient_Race][varchar](50) NULL,
     [Patient_Ethnicity][varchar](50) NULL,
   CONSTRAINT[PK_Patient] PRIMARY KEY CLUSTERED
   (
      [Patient_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[PatientInformation](
     [PatientInformation_ID] [int] IDENTITY(1,1) NOT NULL,
[PatientInformation_ID][int] NULL,
     [PatientInformation_DateOfRecord][varchar](50) NULL,
     [PatientInformation_AgeAtRecord][float] NULL,
     [PatientInformation_VitalStatus][varchar](50) NULL,
     [PatientInformation_GenderIdentity][varchar](50) NULL,
     [PatientInformation_HasTobaccoUseHistory][bit] NULL,
     [PatientInformation_HistoryOfTobaccoUse][varchar](50) NULL,
     [PatientInformation_HistoryOfSmokelessTobaccoUse][varchar](50) NULL,
     [PatientInformation_HistoryOfECigaretteUse][varchar](50) NULL,
     [PatientInformation_AlchoholDrinksPerWeek][int] NULL,
     [PatientInformation_Height][float] NULL,
     [PatientInformation_Weight][float] NULL,
     [PatientInformation_SmokingPackYears][float] NULL,
     [PatientInformation_BloodPressure][varchar](50) NULL,
     [PatientInformation_BloodPressurePosition][varchar](50) NULL,
     [PatientInformation_HeartRate][int] NULL,
     [PatientInformation_TemperatureBodySite][varchar](50) NULL,
     [PatientInformation_TemperatureCelsius][float] NULL,
     [PatientInformation_HasBeenOnAnyClinicalTrial][bit] NULL,
     [PatientInformation_OnClinicalTrialNumber][varchar](50) NULL,
     [PatientInformation_PostalCodeDomicile][varchar](50) NULL,
     [PatientInformation_GPSDomicile][varchar](50) NULL,
     [PatientInformation_AddressOfDomicile][varchar](50) NULL,
     [PatientInformation_AddressOfPCP][varchar](50) NULL,
     [PatientInformation_Insurance][varchar](50) NULL,
     [PatientInformation_Disability][varchar](50) NULL,
     [PatientInformation_CaregiverofDisabledPerson][varchar](50) NULL,
     [PatientInformation_EducationLevel][varchar](50) NULL,
     [PatientInformation_LanguageSpokenAtHome][varchar](50) NULL,
     [PatientInformation_PHIDerivedMeasureItem][varchar](50) NULL,
     [PatientInformation_PHIDerivedMeasureItemValue][varchar](50) NULL,
     [PatientInformation_PHIDerivedMeasureItemReference][varchar](50) NULL,
   CONSTRAINT[PK_PatientInformation] PRIMARY KEY CLUSTERED
   (
      [PatientInformation_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[DiagStaging](
     [DiagStaging_ID] [int] IDENTITY(1,1) NOT NULL,
[DiagStaging_ID][int] NULL,
[DiagStaging_ID][int] NULL,
[DiagStaging_ID][int] NULL,
[DiagStaging_ID][int] NULL,
     [DiagStaging_DateOfRecord][varchar](50) NULL,
     [DiagStaging_AgeAtRecord][float] NULL,
     [DiagStaging_IsBaseline][varchar](50) NULL,
     [DiagStaging_StagingSystem][varchar](50) NULL,
     [DiagStaging_ICDVersion][varchar](50) NULL,
     [DiagStaging_ICDCode][varchar](50) NULL,
     [DiagStaging_ICDCodeQualifier][varchar](50) NULL,
     [DiagStaging_Histology][varchar](50) NULL,
     [DiagStaging_DiseasePrimarySite][varchar](50) NULL,
     [DiagStaging_DiseaseSubsite][varchar](50) NULL,
     [DiagStaging_StagingTCategory][varchar](50) NULL,
     [DiagStaging_StagingT][varchar](50) NULL,
     [DiagStaging_StagingClinicalN][varchar](50) NULL,
     [DiagStaging_StagingPathologicN][varchar](50) NULL,
     [DiagStaging_StagingM][varchar](50) NULL,
     [DiagStaging_ImagingBiopsy][varchar](50) NULL,
     [DiagStaging_PathologyMolecularTestName][varchar](50) NULL,
     [DiagStaging_PathologyMolecularTestResult][varchar](50) NULL,
     [DiagStaging_PriorActiveSurveillance][bit] NULL,
     [DiagStaging_DiseaseExtentAssessmentMethod][varchar](50) NULL,
     [DiagStaging_SupplementalFactorsInTreatmentAssessment][varchar](50) NULL,
     [DiagStaging_GeneticSusceptibilityMarkers][varchar](50) NULL,
     [DiagStaging_PrimaryICDCodesWhenTreatingSecondary][varchar](50) NULL,
     [DiagStaging_HadSurgicalTherapeuticResection][bit] NULL,
     [DiagStaging_SurgicalMarginStatus][varchar](50) NULL,
   CONSTRAINT[PK_DiagStaging] PRIMARY KEY CLUSTERED
   (
      [DiagStaging_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[DiagStagingHN](
     [DiagStagingHN_ID] [int] IDENTITY(1,1) NOT NULL,
[DiagStagingHN_ID][int] NULL,
     [DiagStagingHN_DateOfRecord][varchar](50) NULL,
     [DiagStagingHN_AgeAtRecord][float] NULL,
     [DiagStagingHN_DistanceToClosestMargin][float] NULL,
     [DiagStagingHN_HadPerineuralInvasion][bit] NULL,
     [DiagStagingHN_HadBoneInvasion][bit] NULL,
     [DiagStagingHN_MarginStatus][varchar](50) NULL,
     [DiagStagingHN_NLymphNodesExamined][int] NULL,
     [DiagStagingHN_NLymphNodesPositive][int] NULL,
     [DiagStagingHN_HadExtranodalExtension][bit] NULL,
     [DiagStagingHN_HadExtranodalExtensionDistance][float] NULL,
     [DiagStagingHN_ImagingForStagingT][varchar](50) NULL,
     [DiagStagingHN_ImagingForStagingN][varchar](50) NULL,
     [DiagStagingHN_ImagingforStagingM][varchar](50) NULL,
     [DiagStagingHN_p16Status][float] NULL,
     [DiagStagingHN_HPVStatus][float] NULL,
     [DiagStagingHN_HPVStatusDetectionMethod][varchar](50) NULL,
     [DiagStagingHN_LocationOfBiopsyAtDiagnosis][int] NULL,
     [DiagStagingHN_TypeOfBiopsyAtDiagnosis][int] NULL,
   CONSTRAINT[PK_DiagStagingHN] PRIMARY KEY CLUSTERED
   (
      [DiagStagingHN_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[DiagStagingProst](
     [DiagStagingProst_ID] [int] IDENTITY(1,1) NOT NULL,
[DiagStagingProst_ID][int] NULL,
     [DiagStagingProst_DateOfRecord][varchar](50) NULL,
     [DiagStagingProst_AgeAtRecord][float] NULL,
     [DiagStagingProst_HadProstatectomy][bit] NULL,
     [DiagStagingProst_ProstatectomyMarginStatus][varchar](50) NULL,
     [DiagStagingProst_ProstateVolume][float] NULL,
     [DiagStagingProst_ImagingForStagingT][varchar](50) NULL,
     [DiagStagingProst_ImagingForStagingN][varchar](50) NULL,
     [DiagStagingProst_ImagingforStagingM][varchar](50) NULL,
     [DiagStagingProst_StagingPSAValue][float] NULL,
     [DiagStagingProst_PrimaryGleasonScoreAtBiopsy][varchar](50) NULL,
     [DiagStagingProst_SecondaryGleasonScoreAtBiopsy][varchar](50) NULL,
     [DiagStagingProst_TertiaryGleasonScoreAtBiopsy][varchar](50) NULL,
     [DiagStagingProst_PrimaryGleasonScoreatProstatectomy][varchar](50) NULL,
     [DiagStagingProst_SecondaryGleasonScoreatProstatectomy][varchar](50) NULL,
     [DiagStagingProst_TertiaryGleasonScoreatProstatectomy][varchar](50) NULL,
     [DiagStagingProst_NumberOfCores][int] NULL,
     [DiagStagingProst_NumberOfGleasons8-10Cores][int] NULL,
     [DiagStagingProst_NumberOfPositiveCores][int] NULL,
   CONSTRAINT[PK_DiagStagingProst] PRIMARY KEY CLUSTERED
   (
      [DiagStagingProst_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[DiagStagingTreatmentOverview](
     [DiagStagingTreatmentOverview_ID] [int] IDENTITY(1,1) NOT NULL,
[DiagStagingTreatmentOverview_ID][int] NULL,
     [DiagStagingTreatmentOverview_DateOfRecord][varchar](50) NULL,
     [DiagStagingTreatmentOverview_AgeAtRecord][float] NULL,
     [DiagStagingTreatmentOverview_RadTherAsPartOfTreatment][varchar](50) NULL,
     [DiagStagingTreatmentOverview_DaysDiagStageToRadTher][int] NULL,
     [DiagStagingTreatmentOverview_SysTherAsPartOfTreatment][varchar](50) NULL,
     [DiagStagingTreatmentOverview_DaysDiagStageToSysTher][int] NULL,
     [DiagStagingTreatmentOverview_SurgAsPartOfTreatment][varchar](50) NULL,
     [DiagStagingTreatmentOverview_DaysDiagStageToSurg][int] NULL,
   CONSTRAINT[PK_DiagStagingTreatmentOverview] PRIMARY KEY CLUSTERED
   (
      [DiagStagingTreatmentOverview_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[PatientTreatmentOutcome](
     [PatientTreatmentOutcome_ID] [int] IDENTITY(1,1) NOT NULL,
[PatientTreatmentOutcome_ID][int] NULL,
[PatientTreatmentOutcome_ID][int] NULL,
[PatientTreatmentOutcome_ID][int] NULL,
[PatientTreatmentOutcome_ID][int] NULL,
     [PatientTreatmentOutcome_DateOfRecord][varchar](50) NULL,
     [PatientTreatmentOutcome_AgeAtRecord][float] NULL,
     [PatientTreatmentOutcome_IsBaseline][varchar](50) NULL,
     [PatientTreatmentOutcome_DiseaseStatus][varchar](50) NULL,
     [PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus][varchar](50) NULL,
     [PatientTreatmentOutcome_SiteOfRecurrence][varchar](50) NULL,
     [PatientTreatmentOutcome_RecurrenceInVOutField][varchar](50) NULL,
   CONSTRAINT[PK_PatientTreatmentOutcome] PRIMARY KEY CLUSTERED
   (
      [PatientTreatmentOutcome_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[ProviderReportedToxicity](
     [ProviderReportedToxicity_ID] [int] IDENTITY(1,1) NOT NULL,
[ProviderReportedToxicity_ID][int] NULL,
[ProviderReportedToxicity_ID][int] NULL,
[ProviderReportedToxicity_ID][int] NULL,
[ProviderReportedToxicity_ID][int] NULL,
     [ProviderReportedToxicity_DateOfRecord][varchar](50) NULL,
     [ProviderReportedToxicity_AgeAtRecord][float] NULL,
     [ProviderReportedToxicity_ToxictyCodingSystem][varchar](50) NULL,
     [ProviderReportedToxicity_ToxicityMeasure][varchar](50) NULL,
     [ProviderReportedToxicity_ToxicityValue][varchar](50) NULL,
   CONSTRAINT[PK_ProviderReportedToxicity] PRIMARY KEY CLUSTERED
   (
      [ProviderReportedToxicity_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[PRO](
     [PRO_ID] [int] IDENTITY(1,1) NOT NULL,
[PRO_ID][int] NULL,
[PRO_ID][int] NULL,
[PRO_ID][int] NULL,
[PRO_ID][int] NULL,
     [PRO_DateOfRecord][varchar](50) NULL,
     [PRO_AgeAtRecord][float] NULL,
     [PRO_Instrument][varchar](50) NULL,
     [PRO_QuestionID][varchar](50) NULL,
     [PRO_Question][varchar](50) NULL,
     [PRO_QuestionResponse][varchar](50) NULL,
   CONSTRAINT[PK_PRO] PRIMARY KEY CLUSTERED
   (
      [PRO_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[PerformanceScore](
     [PerformanceScore_ID] [int] IDENTITY(1,1) NOT NULL,
[PerformanceScore_ID][int] NULL,
     [PerformanceScore_DateOfRecord][varchar](50) NULL,
     [PerformanceScore_AgeAtRecord][float] NULL,
     [PerformanceScore_System][varchar](50) NULL,
     [PerformanceScore_Value][varchar](50) NULL,
   CONSTRAINT[PK_PerformanceScore] PRIMARY KEY CLUSTERED
   (
      [PerformanceScore_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTCourse](
     [RTCourse_ID] [int] IDENTITY(1,1) NOT NULL,
[RTCourse_ID][int] NULL,
[DiagStaging_ID][int] NULL,
[RTPrescription_ID][int] NULL,
[RTTreatedPlan_ID][int] NULL,
     [RTCourse_DateOfRecord][varchar](50) NULL,
     [RTCourse_AgeAtRecord][float] NULL,
     [RTCourse_Facility][varchar](50) NULL,
     [RTCourse_FacilityPostalCode][varchar](50) NULL,
     [RTCourse_GPSFacility][varchar](50) NULL,
     [RTCourse_FacilityAddress][varchar](50) NULL,
     [RTCourse_Name][varchar](50) NULL,
     [RTCourse_Objective][varchar](50) NULL,
     [RTCourse_NSessionsInCourse][int] NULL,
     [RTCourse_InvolvesReIrradiation][bit] NULL,
     [RTCourse_ReIrradiationDosesEvaluated][bit] NULL,
     [RTCourse_ResidenceDuringTreatment][bit] NULL,
     [RTCourse_PatientHelperBrought][bit] NULL,
     [RTCourse_DistanceToPatientPrimaryResidenceDirect][varchar](50) NULL,
     [RTCourse_DistanceToPatientPrimaryResidenceDirectMethod][varchar](50) NULL,
     [RTCourse_DistanceToPatientDomicileDirectUnits][varchar](50) NULL,
     [RTCourse_DistanceToPatientPrimaryResidenceDriving][varchar](50) NULL,
     [RTCourse_DistanceToPatientPrimaryResidenceDrivingMethod][varchar](50) NULL,
     [RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits][varchar](50) NULL,
   CONSTRAINT[PK_RTCourse] PRIMARY KEY CLUSTERED
   (
      [RTCourse_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTCourseTargetDose](
     [RTCourseTargetDose_ID] [int] IDENTITY(1,1) NOT NULL,
[RTCourseTargetDose_ID][int] NULL,
     [RTCourseTargetDose_VolumeName][varchar](50) NULL,
     [RTCourseTargetDose_VolumeDose][float] NULL,
     [RTCourseTargetDose_DoseUnit][varchar](50) NULL,
   CONSTRAINT[PK_RTCourseTargetDose] PRIMARY KEY CLUSTERED
   (
      [RTCourseTargetDose_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTCourseEvent](
     [RTCourseEvent_ID] [int] IDENTITY(1,1) NOT NULL,
[RTCourseEvent_ID][int] NULL,
     [RTCourseEvent_DateOfRecord][varchar](50) NULL,
     [RTCourseEvent_AgeAtRecord][float] NULL,
     [RTCourseEvent_Type][varchar](50) NULL,
   CONSTRAINT[PK_RTCourseEvent] PRIMARY KEY CLUSTERED
   (
      [RTCourseEvent_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTCourseSession](
     [RTCourseSession_ID] [int] IDENTITY(1,1) NOT NULL,
[RTCourseSession_ID][int] NULL,
[RTTreatedPlanFraction_ID][int] NULL,
     [RTCourseSession_DateOfRecord][varchar](50) NULL,
     [RTCourseSession_AgeAtRecord][float] NULL,
     [RTCourseSession_Number][float] NULL,
     [RTCourseSession_DurationOfSession][float] NULL,
     [RTCourseSession_DurationRadiationDeliveryInSession][float] NULL,
     [RTCourseSession_NCBCTInSession][int] NULL,
     [RTCourseSession_NkVInSession][int] NULL,
     [RTCourseSession_NMVInSession][int] NULL,
   CONSTRAINT[PK_RTCourseSession] PRIMARY KEY CLUSTERED
   (
      [RTCourseSession_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTPhase](
     [RTPhase_ID] [int] IDENTITY(1,1) NOT NULL,
[RTPhase_ID][int] NULL,
[RTPhase_ID][int] NULL,
     [RTPhase_DateOfRecord][varchar](50) NULL,
     [RTPhase_AgeAtRecord][float] NULL,
     [RTPhase_Name][varchar](50) NULL,
     [RTPhase_Technique][varchar](50) NULL,
     [RTPhase_Modality][varchar](50) NULL,
     [RTPhase_NumberOfFractions][int] NULL,
   CONSTRAINT[PK_RTPhase] PRIMARY KEY CLUSTERED
   (
      [RTPhase_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTPhaseTargetDose](
     [RTPhaseTargetDose_ID] [int] IDENTITY(1,1) NOT NULL,
[RTPhaseTargetDose_ID][int] NULL,
     [RTPhaseTarget_VolumeName][varchar](50) NULL,
     [RTPhaseTarget_VolumeDose][float] NULL,
     [RTPhaseTarget_DoseUnit][varchar](50) NULL,
   CONSTRAINT[PK_RTPhaseTargetDose] PRIMARY KEY CLUSTERED
   (
      [RTPhaseTargetDose_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTPrescription](
     [RTPrescription_ID] [int] IDENTITY(1,1) NOT NULL,
[RTPrescription_ID][int] NULL,
[RTPrescription_ID][int] NULL,
[RTPrescription_ID][int] NULL,
[RTPrescriptionTargetDose_ID][int] NULL,
[RTPrescriptionDVHObjectives_ID][int] NULL,
[RTTreatedPlan_ID][int] NULL,
[RTPrescription_ID][int] NULL,
     [RTPrescription_DateOfRecord][varchar](50) NULL,
     [RTPrescription_AgeAtRecord][float] NULL,
     [RTPrescription_Name][varchar](50) NULL,
     [RTPrescription_NTxSessions][int] NULL,
     [RTPrescription_NSessionsPerDay][int] NULL,
     [RTPrescription_NSessionsPerWeek][int] NULL,
     [RTPrescription_IsPlanPrescription][bit] NULL,
     [RTPrescription_IsPhasePrescription][bit] NULL,
     [RTPrescription_IsCourseCumulativePrescription][bit] NULL,
   CONSTRAINT[PK_RTPrescription] PRIMARY KEY CLUSTERED
   (
      [RTPrescription_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTPrescriptionTargetDose](
     [RTPrescriptionTargetDose_ID] [int] IDENTITY(1,1) NOT NULL,
[RTPrescriptionTargetDose_ID][int] NULL,
     [RTPrescriptionTargetDose_VolumeName][varchar](50) NULL,
     [RTPrescriptionTargetDose_VolumeDose][float] NULL,
     [RTPrescriptionTargetDose_DoseUnit][varchar](50) NULL,
   CONSTRAINT[PK_RTPrescriptionTargetDose] PRIMARY KEY CLUSTERED
   (
      [RTPrescriptionTargetDose_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTPrescriptionDoseObjective](
     [RTPrescriptionDoseObjective_ID] [int] IDENTITY(1,1) NOT NULL,
[RTPrescriptionDoseObjective_ID][int] NULL,
     [RTPrescriptionDoseObjective_StructureType][varchar](50) NULL,
     [RTPrescriptionDoseObjective_ComponentStructures][varchar](50) NULL,
     [RTPrescriptionDoseObjective_StructureName][varchar](50) NULL,
     [RTPrescriptionDoseObjective_Priority][varchar](50) NULL,
     [RTPrescriptionDoseObjective_MetricName][varchar](50) NULL,
     [RTPrescriptionDoseObjective_Condition][varchar](50) NULL,
     [RTPrescriptionDoseObjective_Value][float] NULL,
   CONSTRAINT[PK_RTPrescriptionDoseObjective] PRIMARY KEY CLUSTERED
   (
      [RTPrescriptionDoseObjective_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedPlan](
     [RTTreatedPlan_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedPlan_ID][int] NULL,
[RTPlanningStructureSet_ID][int] NULL,
[DVHCurve_ID][int] NULL,
[DVHMetric_ID][int] NULL,
[RTTreatedPlanDetailsXRT_ID][int] NULL,
[RTTreatedPlanDetailsBrachytherapy_ID][int] NULL,
[RTTreatedPlanDetailsHadrons_ID][int] NULL,
[RTPrescription_ID][int] NULL,
[Image_ID][int] NULL,
[RTTreatedPlan_ID][int] NULL,
     [RTTreatedPlan_Name][varchar](50) NULL,
     [RTTreatedPlan_TPSID][varchar](50) NULL,
     [RTTreatedPlan_TreatmentPlanningAlgorithm][varchar](50) NULL,
     [RTTreatedPlan_DoseCalculationVoxelSize][float] NULL,
     [RTTreatedPlan_UsedHeterogeneityCorrection][bit] NULL,
     [RTTreatedPlan_TreatmentPlanningGeneration][varchar](50) NULL,
     [RTTreatedPlan_NFractionsIntended][int] NULL,
     [RTTreatedPlan_NFractionsDelivered][int] NULL,
     [RTTreatedPlan_AdaptationOrRevision][varchar](50) NULL,
     [RTTreatedPlan_ReasonForAdaptationOrRevision][varchar](50) NULL,
     [RTTreatedPlan_AdaptationOrRevisionOPlanName][varchar](50) NULL,
     [RTTreatedPlan_Modality][varchar](50) NULL,
     [RTTreatedPlan_DoseExpressedToMaterial][varchar](50) NULL,
     [RTTreatedPlan_DoseDeliveryCategory][varchar](50) NULL,
     [RTTreatedPlan_IsPlanRepCumulativePhase][bit] NULL,
     [RTTreatedPlan_IsPlanRepCumulativeCourse][bit] NULL,
     [RTTreatedPlan_IsPlanSum][bit] NULL,
     [RTTreatedPlan_DicomPlan_UID][varchar](50) NULL,
     [RTTreatedPlan_DicomDose_UID][varchar](50) NULL,
     [RTTreatedPlan_PlanSumRegistrationMethod][varchar](50) NULL,
     [RTTreatedPlan_PlanSumRegistrationBasis][varchar](50) NULL,
     [RTTreatedPlan_ImageGuidance][varchar](50) NULL,
     [RTTreatedPlan_PatientPosition][varchar](50) NULL,
     [RTTreatedPlan_UsedFiducialsInIGRT][bit] NULL,
     [RTTreatedPlan_FiducialMarkerType][varchar](50) NULL,
     [RTTreatedPlan_UsedSurfaceGuidance][bit] NULL,
     [RTTreatedPlan_UsedSpacer][bit] NULL,
     [RTTreatedPlan_UsedPlanAssessment][bit] NULL,
     [RTTreatedPlan_FrequencyOfPlanAssessment][varchar](50) NULL,
     [RTTreatedPlan_IntrafractionVerificationCategory][varchar](50) NULL,
     [RTTreatedPlan_IntrafractionVerificationModality][varchar](50) NULL,
     [RTTreatedPlan_IntrafractionTreatmentModulation][varchar](50) NULL,
     [RTTreatedPlan_UsedBreathControl][bit] NULL,
     [RTTreatedPlan_BreathControlMethod][varchar](50) NULL,
     [RTTreatedPlan_TypeOfPatientPositioningDevice][varchar](50) NULL,
     [RTTreatedPlan_DailyBowelBladderManagement][varchar](50) NULL,
   CONSTRAINT[PK_RTTreatedPlan] PRIMARY KEY CLUSTERED
   (
      [RTTreatedPlan_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedPlanTargetDose](
     [RTTreatedPlanTargetDose_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedPlanTargetDose_ID][int] NULL,
     [RTTreatedPlanTargetDose_VolumeName][varchar](50) NULL,
     [RTTreatedPlanTargetDose_VolumeDose][float] NULL,
     [RTTreatedPlanTargetDose_DoseUnit][varchar](50) NULL,
   CONSTRAINT[PK_RTTreatedPlanTargetDose] PRIMARY KEY CLUSTERED
   (
      [RTTreatedPlanTargetDose_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[ReirradiationEvaluation](
     [ReirradiationEvaluation_ID] [int] IDENTITY(1,1) NOT NULL,
[ReirradiationEvaluation_ID][int] NULL,
[ReirradiationEvaluation_ID][int] NULL,
[RTTreatedPlan_ID][int] NULL,
[ReirradiationEvaluation_DVHMetric_ID][int] NULL,
     [ReirradiationEvaluation_DateOfRecord][varchar](50) NULL,
     [ReirradiationEvaluation_AgeAtRecord][float] NULL,
     [ReirradiationEvaluation_ValueType][varchar](50) NULL,
     [ReirradiationEvaluation_CourseNames][varchar](50) NULL,
     [ReirradiationEvaluation_ComponentValueNumberOfSessions][varchar](50) NULL,
     [ReirradiationEvaluation_YearsFromPriorTreatment][float] NULL,
     [ReirradiationEvaluation_TimeTissueRecoveryWeightingFactor][float] NULL,
     [ReIrradiationEvaluation_StandardizedMinimalTimeBeforeTissueRecoveryWeightingFactor][float] NULL,
     [ReirradiationEvaluation_PriorDoseEstimateBasis][varchar](50) NULL,
     [ReirradiationEvaluation_RegistrationBasis][varchar](50) NULL,
     [ReirradiationEvaluation_PrimaryOrgansDrivingRegistration][varchar](50) NULL,
   CONSTRAINT[PK_ReirradiationEvaluation] PRIMARY KEY CLUSTERED
   (
      [ReirradiationEvaluation_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[ReirradiationEvaluation_DVHMetric](
     [ReirradiationEvaluation_DVHMetric_ID] [int] IDENTITY(1,1) NOT NULL,
[ReirradiationEvaluation_DVHMetric_ID][int] NULL,
[ReirradiationEvaluation_DVHMetric_ID][int] NULL,
     [ReirradiationEvaluation_DVHMetric_StructureName][varchar](50) NULL,
     [ReirradiationEvaluation_DVHMetric_Name][varchar](50) NULL,
     [ReirradiationEvaluation_DVHMetric_Value][float] NULL,
     [ReirradiationEvaluation_DVHMetric_ComparisonType][varchar](50) NULL,
   CONSTRAINT[PK_ReirradiationEvaluation_DVHMetric] PRIMARY KEY CLUSTERED
   (
      [ReirradiationEvaluation_DVHMetric_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedPlanDetailsXRT](
     [RTTreatedPlanDetailsXRT_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedPlanDetailsXRT_ID][int] NULL,
     [RTTreatedPlanDetailsXRT_Technique][varchar](50) NULL,
     [RTTreatedPlanDetailsXRT_IMRTLeafMotion][varchar](50) NULL,
     [RTTreatedPlanDetailsXRT_DeliveryDevice][varchar](50) NULL,
     [RTTreatedPlanDetailsXRT_Energy][varchar](50) NULL,
   CONSTRAINT[PK_RTTreatedPlanDetailsXRT] PRIMARY KEY CLUSTERED
   (
      [RTTreatedPlanDetailsXRT_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedPlanDetailsBrachytherapy](
     [RTTreatedPlanDetailsBrachytherapy_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedPlanDetailsBrachytherapy_ID][int] NULL,
     [RTTreatedPlanDetailsBrachytherapy_Technique][varchar](50) NULL,
     [RTTreatedPlanDetailsBrachytherapy_DeliveryDevice][varchar](50) NULL,
     [RTTreatedPlanDetailsBrachytherapy_Energy][varchar](50) NULL,
   CONSTRAINT[PK_RTTreatedPlanDetailsBrachytherapy] PRIMARY KEY CLUSTERED
   (
      [RTTreatedPlanDetailsBrachytherapy_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedPlanDetailsRadiopharmaceutical](
     [RTTreatedPlanDetailsRadiopharmaceutical_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedPlanDetailsRadiopharmaceutical_ID][int] NULL,
     [RTTreatedPlanDetailsRadiopharmaceutical_Technique][varchar](50) NULL,
     [RTTreatedPlanDetailsRadiopharmaceutical_Energy][varchar](50) NULL,
   CONSTRAINT[PK_RTTreatedPlanDetailsRadiopharmaceutical] PRIMARY KEY CLUSTERED
   (
      [RTTreatedPlanDetailsRadiopharmaceutical_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedPlanDetailsHadrons](
     [RTTreatedPlanDetailsHadrons_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedPlanDetailsHadrons_ID][int] NULL,
     [RTTreatedPlanDetailsHadrons_AreaCoverageMethod][varchar](50) NULL,
     [RTTreatedPlanDetailsHadrons_FieldOptimizationMethod][varchar](50) NULL,
     [RTTreatedPlanDetailsHadrons_ProtonRobustOptimization][varchar](50) NULL,
     [RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis][varchar](50) NULL,
     [RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectiveness][float] NULL,
     [RTTreatedPlanDetailsHadrons_UsedRepainting][bit] NULL,
     [RTTreatedPlanDetailsHadrons_RepaintingTechnique][varchar](50) NULL,
     [RTTreatedPlanDetailsHadrons_RidgeFilter][bit] NULL,
   CONSTRAINT[PK_RTTreatedPlanDetailsHadrons] PRIMARY KEY CLUSTERED
   (
      [RTTreatedPlanDetailsHadrons_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedFieldDetailsHadrons](
     [RTTreatedFieldDetailsHadrons_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedFieldDetailsHadrons_ID][int] NULL,
     [RTTreatedFieldDetailsHadrons_Name][varchar](50) NULL,
     [RTTreatedFieldDetailsHadrons_RangeShifter][varchar](50) NULL,
     [RTTreatedFieldDetailsHadrons_UsedAperture][bit] NULL,
   CONSTRAINT[PK_RTTreatedFieldDetailsHadrons] PRIMARY KEY CLUSTERED
   (
      [RTTreatedFieldDetailsHadrons_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedPlanFraction](
     [RTTreatedPlanFraction_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedPlanFraction_ID][int] NULL,
[RTTreatedPlanFraction_ID][int] NULL,
     [RTTreatedPlanFraction_DateOfRecord][varchar](50) NULL,
     [RTTreatedPlanFraction_AgeAtRecord][float] NULL,
     [RTTreatedPlanFraction_Number][float] NULL,
     [RTTreatedPlanFraction_SessionNumber][float] NULL,
     [RTTreatedPlanFraction_DurationTreatingPlanRadiationInFraction][float] NULL,
   CONSTRAINT[PK_RTTreatedPlanFraction] PRIMARY KEY CLUSTERED
   (
      [RTTreatedPlanFraction_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTTreatedFieldFraction](
     [RTTreatedFieldFraction_ID] [int] IDENTITY(1,1) NOT NULL,
[RTTreatedFieldFraction_ID][int] NULL,
     [RTTreatedFieldFraction_DateOfRecord][varchar](50) NULL,
     [RTTreatedFieldFraction_AgeAtRecord][float] NULL,
     [RTTreatedFieldFraction_Name][varchar](50) NULL,
     [RTTreatedFieldFraction_FractionOfPlanDoseAssociatedWithField][varchar](50) NULL,
     [RTTreatedFieldFraction_TreatedInPlanFractionNumber][float] NULL,
     [RTTreatedFieldFraction_DurationTreatingFieldRadiationInFraction][float] NULL,
   CONSTRAINT[PK_RTTreatedFieldFraction] PRIMARY KEY CLUSTERED
   (
      [RTTreatedFieldFraction_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[DVHCurve](
     [DVHCurve_ID] [int] IDENTITY(1,1) NOT NULL,
[DVHCurve_ID][int] NULL,
[DVHMetric_ID][int] NULL,
     [DVHCurve_StructureName][varchar](50) NULL,
     [DVHCurve_Volume][float] NULL,
     [DVHCurve_DoseUnits][varchar](50) NULL,
     [DVHCurve_AlphaBeta][float] NULL,
     [DVHCurve_MinDose][float] NULL,
     [DVHCurve_MaxDose][float] NULL,
     [DVHCurve_MeanDose][float] NULL,
     [DVHCurve_STDevDose][float] NULL,
     [DVHCurve_MedianDose][float] NULL,
     [DVHCurve_CummulativeDVH][varchar](50) NULL,
   CONSTRAINT[PK_DVHCurve] PRIMARY KEY CLUSTERED
   (
      [DVHCurve_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[DVHMetric](
     [DVHMetric_ID] [int] IDENTITY(1,1) NOT NULL,
[DVHMetric_ID][int] NULL,
[DVHMetric_ID][int] NULL,
     [DVHMetric_StructureName][varchar](50) NULL,
     [DVHMetric_Name][varchar](50) NULL,
     [DVHMetric_Value][float] NULL,
     [DVHMetric_ComparisonType][varchar](50) NULL,
   CONSTRAINT[PK_DVHMetric] PRIMARY KEY CLUSTERED
   (
      [DVHMetric_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTPlanningStructureSet](
     [RTPlanningStructureSet_ID] [int] IDENTITY(1,1) NOT NULL,
[RTPlanningStructureSet_ID][int] NULL,
[RTPlanning Structure_ID][int] NULL,
     [RTPlanningStructureSet_Name][varchar](50) NULL,
     [RTPlanningStructureSet_DICOM_RS][varchar](50) NULL,
   CONSTRAINT[PK_RTPlanningStructureSet] PRIMARY KEY CLUSTERED
   (
      [RTPlanningStructureSet_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[RTPlanningStructure](
     [RTPlanningStructure_ID] [int] IDENTITY(1,1) NOT NULL,
[RTPlanningStructure_ID][int] NULL,
[RTPlanningStructure_ID][int] NULL,
     [RTPlanningStructure_Name][varchar](50) NULL,
     [RTPlanningStructure_Type][varchar](50) NULL,
     [RTPlanningStructure_PlanningStructureGeneration][varchar](50) NULL,
   CONSTRAINT[PK_RTPlanningStructure] PRIMARY KEY CLUSTERED
   (
      [RTPlanningStructure_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[Image](
     [Image_ID] [int] IDENTITY(1,1) NOT NULL,
[Image_ID][int] NULL,
[RTCourse_ID][int] NULL,
[RTCourseSession_ID][int] NULL,
     [Image_DateOfRecord][varchar](50) NULL,
     [Image_AgeAtRecord][float] NULL,
     [Image_Type][varchar](50) NULL,
     [Image_BodyStructure][varchar](50) NULL,
     [Image_PatientOrientation][varchar](50) NULL,
     [Image_DICOMIMAGE][varchar](50) NULL,
     [Image_DICOMSeriesUID][varchar](50) NULL,
   CONSTRAINT[PK_Image] PRIMARY KEY CLUSTERED
   (
      [Image_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[LabResult](
     [LabResult_ID] [int] IDENTITY(1,1) NOT NULL,
[LabResult_ID][int] NULL,
[LabResult_ID][int] NULL,
[LabResult_ID][int] NULL,
[LabResult_ID][int] NULL,
     [LabResult_DateOfRecord][varchar](50) NULL,
     [LabResult_AgeAtRecord][float] NULL,
     [LabResult_Name][varchar](50) NULL,
     [LabResult_Value][varchar](50) NULL,
     [LabResult_ValueUnits][varchar](50) NULL,
   CONSTRAINT[PK_LabResult] PRIMARY KEY CLUSTERED
   (
      [LabResult_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[SupportiveMedication](
     [SupportiveMedication_ID] [int] IDENTITY(1,1) NOT NULL,
[SupportiveMedication_ID][int] NULL,
[SupportiveMedication_ID][int] NULL,
[SupportiveMedication_ID][int] NULL,
[SupportiveMedication_ID][int] NULL,
     [SupportiveMedication_DateOfRecord][varchar](50) NULL,
     [SupportiveMedication_AgeAtRecord][float] NULL,
     [SupportiveMedication_Name][varchar](50) NULL,
     [SupportiveMedication_Dosage][varchar](50) NULL,
     [SupportiveMedication_DosageUnits][varchar](50) NULL,
   CONSTRAINT[PK_SupportiveMedication] PRIMARY KEY CLUSTERED
   (
      [SupportiveMedication_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[FunctionTestResult](
     [FunctionTestResult_ID] [int] IDENTITY(1,1) NOT NULL,
[FunctionTestResult_ID][int] NULL,
[FunctionTestResult_ID][int] NULL,
[FunctionTestResult_ID][int] NULL,
[FunctionTestResult_ID][int] NULL,
     [FunctionTestResult_DateOfRecord][varchar](50) NULL,
     [FunctionTestResult_AgeAtRecord][float] NULL,
     [FunctionTestResult_Name][varchar](50) NULL,
     [FunctionTestResult_Measure][varchar](50) NULL,
     [FunctionTestResult_MeasureValue][varchar](50) NULL,
   CONSTRAINT[PK_FunctionTestResult] PRIMARY KEY CLUSTERED
   (
      [FunctionTestResult_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[SysTherCourse](
     [SysTherCourse_ID] [int] IDENTITY(1,1) NOT NULL,
[SysTherCourse_ID][int] NULL,
[SysTherCourse_ID][int] NULL,
     [SysTherCourse_DateOfRecord][varchar](50) NULL,
     [SysTherCourse_AgeAtRecord][float] NULL,
     [SysTherCourse_Facility][varchar](50) NULL,
     [SysTherCourse_FacilityPostalCode][varchar](50) NULL,
     [SysTherCourse_FacilityGPS][varchar](50) NULL,
     [SysTherCourse_FacilityAddress][varchar](50) NULL,
     [SysTherCourse_Name][varchar](50) NULL,
     [SysTherCourse_Type][varchar](50) NULL,
     [SysTherCourse_Duration][float] NULL,
     [SysTherCourse_PatientHelperBrought][bit] NULL,
     [SysTherCourse_ResidenceDuringTreatment][bit] NULL,
     [SysTherCourse_DistanceToPatientPrimaryResidenceDirect][varchar](50) NULL,
     [SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod][varchar](50) NULL,
     [SysTherCourse_DistanceToPatientDomicileDirectUnits][varchar](50) NULL,
     [SysTherCourse_DistanceToPatientPrimaryResidenceDriving][varchar](50) NULL,
     [SysTherCourse_DistanceToPatientPrimaryResidenceDrivingMethod][varchar](50) NULL,
     [SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits][varchar](50) NULL,
   CONSTRAINT[PK_SysTherCourse] PRIMARY KEY CLUSTERED
   (
      [SysTherCourse_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[SysTherCycle](
     [SysTherCycle_ID] [int] IDENTITY(1,1) NOT NULL,
     [SysTherCycle_DateOfRecord][varchar](50) NULL,
     [SysTherCycle_AgeAtRecord][float] NULL,
     [SysTherCycle_Name][varchar](50) NULL,
     [SysTherCycle_CycleStatus][float] NULL,
     [SysTherCycle_AdministrationFrequency][varchar](50) NULL,
     [SysTherCycle_Duration][float] NULL,
   CONSTRAINT[PK_SysTherCycle] PRIMARY KEY CLUSTERED
   (
      [SysTherCycle_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[SysTherCycleDrugsChemo](
     [SysTherCycleDrugsChemo_ID] [int] IDENTITY(1,1) NOT NULL,
[SysTherCycleDrugsChemo_ID][int] NULL,
     [SysTherCycleDrugsChemo_SystemicTherapyCycleName][varchar](50) NULL,
     [SysTherCycleDrugsChemo_AdministrationMethod][varchar](50) NULL,
     [SysTherCycleDrugsChemo_DrugName][varchar](50) NULL,
     [SysTherCycleDrugsChemo_DrugDosage][varchar](50) NULL,
     [SysTherCycleDrugsChemo_DrugDosageUnit][varchar](50) NULL,
   CONSTRAINT[PK_SysTherCycleDrugsChemo] PRIMARY KEY CLUSTERED
   (
      [SysTherCycleDrugsChemo_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[SysTherCycleDrugsHT](
     [SysTherCycleDrugsHT_ID] [int] IDENTITY(1,1) NOT NULL,
[SysTherCycleDrugsHT_ID][int] NULL,
     [SysTherCycleDrugsHT_DateOfRecord][varchar](50) NULL,
     [SysTherCycleDrugsHT_AgeAtRecord][float] NULL,
     [SysTherCycleDrugsHT_DrugName][varchar](50) NULL,
     [SysTherCycleDrugsHT_DrugDosage][varchar](50) NULL,
     [SysTherCycleDrugsHT_DrugDosageUnit][varchar](50) NULL,
   CONSTRAINT[PK_SysTherCycleDrugsHT] PRIMARY KEY CLUSTERED
   (
      [SysTherCycleDrugsHT_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[SysTherCycleDrugsImmuno](
     [SysTherCycleDrugsImmuno_ID] [int] IDENTITY(1,1) NOT NULL,
[SysTherCycleDrugsImmuno_ID][int] NULL,
[SysTherCycleDrugsImmuno_ID][int] NULL,
     [SysTherCycleDrugsImmuno_DateOfRecord][varchar](50) NULL,
     [SysTherCycleDrugsImmuno_AgeAtRecord][float] NULL,
     [SysTherCycleDrugsImmuno_DrugName][varchar](50) NULL,
     [SysTherCycleDrugsImmuno_DrugDosage][varchar](50) NULL,
     [SysTherCycleDrugsImmuno_DrugDosageUnit][varchar](50) NULL,
   CONSTRAINT[PK_SysTherCycleDrugsImmuno] PRIMARY KEY CLUSTERED
   (
      [SysTherCycleDrugsImmuno_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[InterventionalProcedure](
     [InterventionalProcedure_ID] [int] IDENTITY(1,1) NOT NULL,
[InterventionalProcedure_ID][int] NULL,
[InterventionalProcedure_ID][int] NULL,
[RTCourse_ID][int] NULL,
[SysTherCourse_ID][int] NULL,
     [InterventionalProcedure_DateOfRecord][varchar](50) NULL,
     [InterventionalProcedure_AgeAtRecord][float] NULL,
     [InterventionalProcedure_Facility][varchar](50) NULL,
     [InterventionalProcedure_FacilityAddress][varchar](50) NULL,
     [InterventionalProcedure_FacilityPostalCode][varchar](50) NULL,
     [InterventionalProcedure_GPSFacility][varchar](50) NULL,
     [InterventionalProcedure_Type][varchar](50) NULL,
     [InterventionalProcedure_Intent][varchar](50) NULL,
     [InterventionalProcedure_Attribution][varchar](50) NULL,
     [InterventionalProcedure_BiopsyStatus][varchar](50) NULL,
     [InterventionalProcedure_IsPreIrradiation][bit] NULL,
     [InterventionalProcedure_PatientHelperBrought][bit] NULL,
     [InterventionalProcedure_ResidenceDuringTreatment][bit] NULL,
     [InterventionalProcedure_DistanceToPatientPrimaryResidenceDirect][varchar](50) NULL,
     [InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod][varchar](50) NULL,
     [InterventionalProcedure_DistanceToPatientDomicileDirectUnits][varchar](50) NULL,
     [InterventionalProcedure_DistanceToPatientPrimaryResidenceDriving][varchar](50) NULL,
     [InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingMethod][varchar](50) NULL,
     [InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits][varchar](50) NULL,
   CONSTRAINT[PK_InterventionalProcedure] PRIMARY KEY CLUSTERED
   (
      [InterventionalProcedure_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[PatientEncounter](
     [PatientEncounter_ID] [int] IDENTITY(1,1) NOT NULL,
[PatientEncounter_ID][int] NULL,
[PatientEncounter_ID][int] NULL,
[PatientEncounter_ID][int] NULL,
[PatientEncounter_ID][int] NULL,
     [PatientEncounter_DateOfRecord][varchar](50) NULL,
     [PatientEncounter_AgeAtRecord][float] NULL,
     [PatientEncounter_Facility][varchar](50) NULL,
     [PatientEncounter_PostalCodeFacility][varchar](50) NULL,
     [PatientEncounter_GPSFacility][varchar](50) NULL,
     [PatientEncounter_DepartmentName][varchar](50) NULL,
     [PatientEncounter_DepartmentCategorization][varchar](50) NULL,
     [PatientEncounter_Environment][varchar](50) NULL,
     [PatientEncounter_Type][varchar](50) NULL,
     [PatientEncounter_PatientPostalCode][varchar](50) NULL,
     [PatientEncounter_GPSPatientDomicile][varchar](50) NULL,
     [PatientEncounter_InterpreterPresent][bit] NULL,
     [PatientEncounter_PatientLanguageUsed][varchar](50) NULL,
     [PatientEncounter_PrimaryDiagnosisCode][varchar](50) NULL,
     [PatientEncounter_OtherDiagnosis][varchar](50) NULL,
     [PatientEncounter_Multi-SpecialtyConsults][varchar](50) NULL,
     [PatientEncounter_ResidenceDuringTreatment][bit] NULL,
     [PatientEncounter_PatientHelperBrought][bit] NULL,
     [PatientEncounter_DistanceToPatientPrimaryResidenceDirect][varchar](50) NULL,
     [PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod][varchar](50) NULL,
     [PatientEncounter_DistanceToPatientDomicileDirectUnits][varchar](50) NULL,
     [PatientEncounter_DistanceToPatientPrimaryResidenceDriving][varchar](50) NULL,
     [PatientEncounter_DistanceToPatientPrimaryResidenceDrivingMethod][varchar](50) NULL,
     [PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits][varchar](50) NULL,
   CONSTRAINT[PK_PatientEncounter] PRIMARY KEY CLUSTERED
   (
      [PatientEncounter_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[Charge](
     [Charge_ID] [int] IDENTITY(1,1) NOT NULL,
[Charge_ID][int] NULL,
[Charge_ID][int] NULL,
[Charge_ID][int] NULL,
[Charge_ID][int] NULL,
[Charge_ID][int] NULL,
     [Charge_DateOfRecord][varchar](50) NULL,
     [Charge_AgeAtRecord][float] NULL,
     [Charge_Code][varchar](50) NULL,
     [Charge_CodeQuantity][int] NULL,
   CONSTRAINT[PK_Charge] PRIMARY KEY CLUSTERED
   (
      [Charge_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO](
     [HCO_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_Site_ID][int] NULL,
     [HCO_Name][varchar](50) NULL,
     [HCO_IDCode][varchar](50) NULL,
     [HCO_DateOfOperationInitiation][varchar](50) NULL,
     [HCO_Country][varchar](50) NULL,
   CONSTRAINT[PK_HCO] PRIMARY KEY CLUSTERED
   (
      [HCO_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO_Site](
     [HCO_Site_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_Site_ID][int] NULL,
[HCO_Site_ID][int] NULL,
[HCO_Site_ID][int] NULL,
     [HCO_Site_DateOfRecord][varchar](50) NULL,
     [HCO_Site_AgeAtRecord][float] NULL,
     [HCO_Site_Name][varchar](50) NULL,
     [HCO_Site_IDCode][varchar](50) NULL,
     [HCO_Site_Address][varchar](50) NULL,
     [HCO_Site_DateOfOperationInitiation][varchar](50) NULL,
     [HCO_Site_Type][varchar](50) NULL,
     [HCO_Site_ImageStorageMethods][varchar](50) NULL,
   CONSTRAINT[PK_HCO_Site] PRIMARY KEY CLUSTERED
   (
      [HCO_Site_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO_SiteCount](
     [HCO_SiteCount_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_SiteCount_ID][int] NULL,
     [HCO_SiteCount_DateOfRecord][varchar](50) NULL,
     [HCO_SiteCount_AgeAtRecord][float] NULL,
     [HCO_SiteCount_TimePointType][varchar](50) NULL,
     [HCO_SiteCount_TimePointValue][varchar](50) NULL,
     [HCO_SiteCount_Type][varchar](50) NULL,
     [HCO_SiteCount_Value][varchar](50) NULL,
   CONSTRAINT[PK_HCO_SiteCount] PRIMARY KEY CLUSTERED
   (
      [HCO_SiteCount_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO_SiteUnitCount](
     [HCO_SiteUnitCount_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_SiteUnitCount_ID][int] NULL,
     [HCO_SiteUnitCount_DateOfRecord][varchar](50) NULL,
     [HCO_SiteUnitCount_AgeAtRecord][float] NULL,
     [HCO_SiteUnitCount_TimePointType][varchar](50) NULL,
     [HCO_SiteUnitCount_TimePointValue][varchar](50) NULL,
     [HCO_SiteUnitCount_Type][varchar](50) NULL,
     [HCO_SiteUnitCount_Value][varchar](50) NULL,
   CONSTRAINT[PK_HCO_SiteUnitCount] PRIMARY KEY CLUSTERED
   (
      [HCO_SiteUnitCount_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO_SiteUnitUtilizationCount](
     [HCO_SiteUnitUtilizationCount_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_SiteUnitUtilizationCount_ID][int] NULL,
     [HCO_SiteUnitUtilizationCount_DateOfRecord][varchar](50) NULL,
     [HCO_SiteUnitUtilizationCount_AgeAtRecord][float] NULL,
     [HCO_SiteUnitUtilizationCount_NameOfUnit][varchar](50) NULL,
     [HCO_SiteUnitUtilizationCount_TimePointType][varchar](50) NULL,
     [HCO_SiteUnitUtilizationCount_TimePointValue][varchar](50) NULL,
     [HCO_SiteUnitUtilizationCount_Type][varchar](50) NULL,
     [HCO_SiteUnitUtilizationCount_Value][varchar](50) NULL,
   CONSTRAINT[PK_HCO_SiteUnitUtilizationCount] PRIMARY KEY CLUSTERED
   (
      [HCO_SiteUnitUtilizationCount_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO_SiteCapabilities](
     [HCO_SiteCapabilities_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_SiteCapabilities_ID][int] NULL,
     [HCO_SiteCapabilities_DateOfRecord][varchar](50) NULL,
     [HCO_SiteCapabilities_AgeAtRecord][float] NULL,
     [HCO_SiteCapabilities_TimePointType][varchar](50) NULL,
     [HCO_SiteCapabilities_TimePointValue][varchar](50) NULL,
     [HCO_SiteCapabilities_TPSAvailable][varchar](50) NULL,
     [HCO_SiteCapabilities_TPSUsed][varchar](50) NULL,
     [HCO_SiteCapabilities_TPSSupport][varchar](50) NULL,
   CONSTRAINT[PK_HCO_SiteCapabilities] PRIMARY KEY CLUSTERED
   (
      [HCO_SiteCapabilities_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO_SiteStaff](
     [HCO_SiteStaff_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_SiteStaff_ID][int] NULL,
     [HCO_SiteStaff_DateOfRecord][varchar](50) NULL,
     [HCO_SiteStaff_AgeAtRecord][float] NULL,
     [HCO_SiteStaff_TimePointType][varchar](50) NULL,
     [HCO_SiteStaff_TimePointValue][varchar](50) NULL,
     [HCO_SiteStaff_CountID][varchar](50) NULL,
     [HCO_SiteStaff_Type][varchar](50) NULL,
     [HCO_SiteStaff_FTE][float] NULL,
     [HCO_SiteStaff_Subspecialization][float] NULL,
     [HCO_SiteStaff_Qualification][float] NULL,
     [HCO_SiteStaff_EdDegrees][varchar](50) NULL,
     [HCO_SiteStaff_ClinRoles][varchar](50) NULL,
     [HCO_SiteStaff_EmployerCat][varchar](50) NULL,
   CONSTRAINT[PK_HCO_SiteStaff] PRIMARY KEY CLUSTERED
   (
      [HCO_SiteStaff_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[HCO_SiteImgTrtUnitInfo](
     [HCO_SiteImgTrtUnitInfo_ID] [int] IDENTITY(1,1) NOT NULL,
[HCO_SiteImgTrtUnitInfo_ID][int] NULL,
     [HCO_SiteImgTrtUnitInfo_DateOfRecord][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_AgeAtRecord][float] NULL,
     [HCO_SiteImgTrtUnitInfo_TimePointType][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_TimePointValue][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_Name][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_Type][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_Make][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_Model][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_SerialNumber][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_YearOfManufacture][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_YearOfInstallation][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_DateLastPMI][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_PMISchedulePlan][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_DateLastPhysicistAnnualTesting][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_Capabilities][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_PatientCount][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_CourseCount][varchar](50) NULL,
     [HCO_SiteImgTrtUnitInfo_ProcedureCount][varchar](50) NULL,
   CONSTRAINT[PK_HCO_SiteImgTrtUnitInfo] PRIMARY KEY CLUSTERED
   (
      [HCO_SiteImgTrtUnitInfo_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



CREATE TABLE [dbo].[O3Relationship](
     [O3Relationship_ID] [int] IDENTITY(1,1) NOT NULL,
     [O3Relationship_DateOfRecord][varchar](50) NULL,
     [O3Relationship_AgeAtRecord][float] NULL,
     [O3Relationship_KeyElement_Type_1][varchar](50) NULL,
     [O3Relationship_Attribute_Type_1][varchar](50) NULL,
     [O3Relationship_KeyElement_GUID_1][varchar](50) NULL,
     [O3Relationship_KeyElement_Type_2][varchar](50) NULL,
     [O3Relationship_Attribute_Type_2][varchar](50) NULL,
     [O3Relationship_KeyElement_GUID_2][varchar](50) NULL,
     [O3Relationship_RelationshipType][varchar](50) NULL,
   CONSTRAINT[PK_O3Relationship] PRIMARY KEY CLUSTERED
   (
      [O3Relationship_ID] ASC
   )WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
) ON[PRIMARY]
GO



