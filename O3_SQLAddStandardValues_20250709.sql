SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_Patient_CauseOfDeathAttribution] (
    [SVL_Patient_CauseOfDeathAttribution_ID][int] IDENTITY(1,1) NOT NULL,
    [Patient_CauseOfDeathAttribution] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_Patient_CauseOfDeathAttribution] PRIMARY KEY CLUSTERED
    	(
      		[SVL_Patient_CauseOfDeathAttribution_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_Patient_CauseOfDeathAttribution] ([Patient_CauseOfDeathAttribution], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Unknown', 'O3_0010090_00001', 'NULL', 'NULL', 'NULL'),
  ('Probably Related', 'O3_0010090_00002', 'NULL', 'NULL', 'NULL'),
  ('Definitely Related', 'O3_0010090_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.Patient.Patient_CauseOfDeathAttribution', 'Patient_CauseOfDeathAttribution_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[Patient]
ALTER COLUMN [Patient_CauseOfDeathAttribution_ID] int NULL;
GO

ALTER TABLE [dbo].[Patient]
ADD FOREIGN KEY ([Patient_CauseOfDeathAttribution_ID])
REFERENCES [dbo].[SVL_Patient_CauseOfDeathAttribution]([SVL_Patient_CauseOfDeathAttribution_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_Patient_SexAtBirth] (
    [SVL_Patient_SexAtBirth_ID][int] IDENTITY(1,1) NOT NULL,
    [Patient_SexAtBirth] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_Patient_SexAtBirth] PRIMARY KEY CLUSTERED
    	(
      		[SVL_Patient_SexAtBirth_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_Patient_SexAtBirth] ([Patient_SexAtBirth], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Male', 'O3_0010100_00001', ' SCTID-248153007 ', ' NCITC-C20197', ' NCIMT-C0086582'),
  ('Female', 'O3_0010100_00002', ' SCTID-248152002 ', ' NCITC-C16576', ' NCIMT-C0015780'),
  ('Undifferentiated', 'O3_0010100_00003', 'NULL', 'NULL', 'NULL'),
  ('Not Disclosed', 'O3_0010100_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.Patient.Patient_SexAtBirth', 'Patient_SexAtBirth_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[Patient]
ALTER COLUMN [Patient_SexAtBirth_ID] int NULL;
GO

ALTER TABLE [dbo].[Patient]
ADD FOREIGN KEY ([Patient_SexAtBirth_ID])
REFERENCES [dbo].[SVL_Patient_SexAtBirth]([SVL_Patient_SexAtBirth_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_Patient_Race] (
    [SVL_Patient_Race_ID][int] IDENTITY(1,1) NOT NULL,
    [Patient_Race] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_Patient_Race] PRIMARY KEY CLUSTERED
    	(
      		[SVL_Patient_Race_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_Patient_Race] ([Patient_Race], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('American Indian or Alaska Native', 'O3_0010110_00001', 'NULL', 'NULL', 'NULL'),
  ('Asian', 'O3_0010110_00002', 'NULL', 'NULL', 'NULL'),
  ('Black or African American', 'O3_0010110_00003', 'NULL', 'NULL', 'NULL'),
  ('Native Hawaiian or Other Pacific Islander', 'O3_0010110_00004', 'NULL', 'NULL', 'NULL'),
  ('White', 'O3_0010110_00005', 'NULL', 'NULL', 'NULL'),
  ('Indeterminate', 'O3_0010110_00006', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0010110_00008', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.Patient.Patient_Race', 'Patient_Race_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[Patient]
ALTER COLUMN [Patient_Race_ID] int NULL;
GO

ALTER TABLE [dbo].[Patient]
ADD FOREIGN KEY ([Patient_Race_ID])
REFERENCES [dbo].[SVL_Patient_Race]([SVL_Patient_Race_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_Patient_Ethnicity] (
    [SVL_Patient_Ethnicity_ID][int] IDENTITY(1,1) NOT NULL,
    [Patient_Ethnicity] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_Patient_Ethnicity] PRIMARY KEY CLUSTERED
    	(
      		[SVL_Patient_Ethnicity_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_Patient_Ethnicity] ([Patient_Ethnicity], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Hispanic or Latino', 'O3_0010120_00001', 'NULL', 'NULL', 'NULL'),
  ('Not Hispanic or Latino', 'O3_0010120_00002', 'NULL', 'NULL', 'NULL'),
  ('Indeterminate', 'O3_0010120_00003', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0010120_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.Patient.Patient_Ethnicity', 'Patient_Ethnicity_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[Patient]
ALTER COLUMN [Patient_Ethnicity_ID] int NULL;
GO

ALTER TABLE [dbo].[Patient]
ADD FOREIGN KEY ([Patient_Ethnicity_ID])
REFERENCES [dbo].[SVL_Patient_Ethnicity]([SVL_Patient_Ethnicity_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_VitalStatus] (
    [SVL_PatientInformation_VitalStatus_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_VitalStatus] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_VitalStatus] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_VitalStatus_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_VitalStatus] ([PatientInformation_VitalStatus], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Alive', 'O3_0020030_00001', 'NULL', 'NULL', 'NULL'),
  ('Dead', 'O3_0020030_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_VitalStatus', 'PatientInformation_VitalStatus_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_VitalStatus_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_VitalStatus_ID])
REFERENCES [dbo].[SVL_PatientInformation_VitalStatus]([SVL_PatientInformation_VitalStatus_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_GenderIdentity] (
    [SVL_PatientInformation_GenderIdentity_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_GenderIdentity] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_GenderIdentity] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_GenderIdentity_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_GenderIdentity] ([PatientInformation_GenderIdentity], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Transgender female', 'O3_0020040_00001', 'NULL', 'NULL', 'NULL'),
  ('Transgender male', 'O3_0020040_00002', 'NULL', 'NULL', 'NULL'),
  ('Non-binary', 'O3_0020040_00003', 'NULL', 'NULL', 'NULL'),
  ('Male', 'O3_0020040_00004', 'NULL', 'NULL', 'NULL'),
  ('Female', 'O3_0020040_00005', 'NULL', 'NULL', 'NULL'),
  ('Other', 'O3_0020040_00006', 'NULL', 'NULL', 'NULL'),
  ('Declines to disclose', 'O3_0020040_00007', 'NULL', 'NULL', 'NULL'),
  ('Indeterminate', 'O3_0020040_00008', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_GenderIdentity', 'PatientInformation_GenderIdentity_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_GenderIdentity_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_GenderIdentity_ID])
REFERENCES [dbo].[SVL_PatientInformation_GenderIdentity]([SVL_PatientInformation_GenderIdentity_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_HistoryOfTobaccoUse] (
    [SVL_PatientInformation_HistoryOfTobaccoUse_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_HistoryOfTobaccoUse] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_HistoryOfTobaccoUse] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_HistoryOfTobaccoUse_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_HistoryOfTobaccoUse] ([PatientInformation_HistoryOfTobaccoUse], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Never Smoker (Individuals who have never smoked a cigarette or who smoked fewer than 100 cigarettes in their entire lifetime)', 'O3_0020280_00001', 'NULL', 'NULL', 'NULL'),
  ('Former Smoker (Individual who have smoked at least 100 cigarettes in their lifetime, but say they currently do not smoke)', 'O3_0020280_00002', 'NULL', 'NULL', 'NULL'),
  ('Nonsmoker (Individuals who currently do not smoke cigarettes, including both former smokers and never smokers)', 'O3_0020280_00003', 'NULL', 'NULL', 'NULL'),
  ('Current Smoker (Individuals who have smoked 100 cigarettes in their lifetime and currently smoke cigarettes every day (daily) or some days (nondaily)).', 'O3_0020280_00004', 'NULL', 'NULL', 'NULL'),
  ('Smoker, current status unknown', 'O3_0020280_00005', 'NULL', 'NULL', 'NULL'),
  ('Unknown if ever smoked', 'O3_0020280_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_HistoryOfTobaccoUse', 'PatientInformation_HistoryOfTobaccoUse_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_HistoryOfTobaccoUse_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_HistoryOfTobaccoUse_ID])
REFERENCES [dbo].[SVL_PatientInformation_HistoryOfTobaccoUse]([SVL_PatientInformation_HistoryOfTobaccoUse_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_HistoryOfECigaretteUse] (
    [SVL_PatientInformation_HistoryOfECigaretteUse_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_HistoryOfECigaretteUse] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_HistoryOfECigaretteUse] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_HistoryOfECigaretteUse_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_HistoryOfECigaretteUse] ([PatientInformation_HistoryOfECigaretteUse], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Never Used Electronic Cigarettes', 'O3_0020300_00001', 'NULL', 'NULL', 'NULL'),
  ('Former User of Electronic Cigarettes', 'O3_0020300_00002', 'NULL', 'NULL', 'NULL'),
  ('Not User of Electronic Cigarettes', 'O3_0020300_00003', 'NULL', 'NULL', 'NULL'),
  ('Current Electronic Cigarettes User', 'O3_0020300_00004', 'NULL', 'NULL', 'NULL'),
  ('Electronic Cigarettes, current status unknown', 'O3_0020300_00005', 'NULL', 'NULL', 'NULL'),
  ('Unknown if ever user of Electronic Cigarettes', 'O3_0020300_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_HistoryOfECigaretteUse', 'PatientInformation_HistoryOfECigaretteUse_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_HistoryOfECigaretteUse_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_HistoryOfECigaretteUse_ID])
REFERENCES [dbo].[SVL_PatientInformation_HistoryOfECigaretteUse]([SVL_PatientInformation_HistoryOfECigaretteUse_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_BloodPressurePosition] (
    [SVL_PatientInformation_BloodPressurePosition_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_BloodPressurePosition] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_BloodPressurePosition] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_BloodPressurePosition_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_BloodPressurePosition] ([PatientInformation_BloodPressurePosition], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Lying', 'O3_0020100_00001', ' SCTID- 102538003', ' NCITC- C77532', 'NCIMT- C0444334'),
  ('Sitting', 'O3_0020100_00002', ' SCTID- 33586001', 'NCITC- C62122', 'NCIMT- CL364833'),
  ('Standing', 'O3_0020100_00003', ' SCTID- 10904000', 'NCITC- C62166', 'NCIMT- C0231472'),
  ('Supine', 'O3_0020100_00004', ' SCTID-', 'NCITC-C62167', 'NCIMT- ');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_BloodPressurePosition', 'PatientInformation_BloodPressurePosition_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_BloodPressurePosition_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_BloodPressurePosition_ID])
REFERENCES [dbo].[SVL_PatientInformation_BloodPressurePosition]([SVL_PatientInformation_BloodPressurePosition_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_TemperatureBodySite] (
    [SVL_PatientInformation_TemperatureBodySite_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_TemperatureBodySite] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_TemperatureBodySite] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_TemperatureBodySite_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_TemperatureBodySite] ([PatientInformation_TemperatureBodySite], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Oral', 'O3_0020120_00001', ' SCTID- 415922000', 'NCITC- C25311', 'NCIMT- C0442027'),
  ('Axillary', 'O3_0020120_00002', ' SCTID- 415882003', 'NCITC- C13351', 'NCIMT- CL317948'),
  ('Rectal', 'O3_0020120_00003', ' SCTID- 307047009 ', ' NCITC- C25224 ', ' NCIMT- C0205052'),
  ('Ear', 'O3_0020120_00004', 'NULL', ' NCITC- C96901', 'NULL'),
  ('Forehead', 'O3_0020120_00005', ' SCTID- 415922000 ', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_TemperatureBodySite', 'PatientInformation_TemperatureBodySite_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_TemperatureBodySite_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_TemperatureBodySite_ID])
REFERENCES [dbo].[SVL_PatientInformation_TemperatureBodySite]([SVL_PatientInformation_TemperatureBodySite_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_Insurance] (
    [SVL_PatientInformation_Insurance_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_Insurance] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_Insurance] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_Insurance_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_Insurance] ([PatientInformation_Insurance], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Private Insurance Employment Based', 'O3_0020200_00001', ' SCTID-', 'NCITC- C70696', ' NCIMT- C2347682 '),
  ('Private Insurance Direct Purchase', 'O3_0020200_00002', ' SCTID- ', 'NCITC- ', ' NCIMT- '),
  ('Private Insurance TRICARE', 'O3_0020200_00003', ' SCTID- ', 'NCITC- C157361', ' NCIMT- CL936951'),
  ('Private Insurance Other', 'O3_0020200_00004', ' SCTID- ', 'NCITC-C70696 ', ' NCIMT- C2347682'),
  ('Public Health Insurance Medicaid', 'O3_0020200_00005', ' SCTID- ', 'NCITC-C68633 ', ' NCIMT- C0025071'),
  ('Public Health Insurance Medicare', 'O3_0020200_00006', ' SCTID-', 'NCITC- C16665', ' NCIMT- C0018717'),
  ('Public Health Insurance VA care', 'O3_0020200_00007', ' SCTID-', 'NCITC- C157363 ', ' NCIMT- CL936953'),
  ('Public Health Insurance Other', 'O3_0020200_00008', ' SCTID-', 'NCITC- ', ' NCIMT- '),
  ('Uninsured', 'O3_0020200_00009', ' SCTID-', 'NCITC- ', ' NCIMT- ');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_Insurance', 'PatientInformation_Insurance_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_Insurance_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_Insurance_ID])
REFERENCES [dbo].[SVL_PatientInformation_Insurance]([SVL_PatientInformation_Insurance_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_Disability] (
    [SVL_PatientInformation_Disability_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_Disability] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_Disability] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_Disability_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_Disability] ([PatientInformation_Disability], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Hearing difficulty', 'O3_0020210_00001', ' SCTID-162340000 ', 'NCITC- C35731 ', ' NCIMT- C3887873 '),
  ('Vision difficulty', 'O3_0020210_00002', 'NULL', ' NCITC- C97109', ' NCIMT- C3553854'),
  ('Cognitive difficulty', 'O3_0020210_00003', ' SCTID-386806002 ', 'NCITC- C97250', ' NCIMT- C3276355'),
  ('Ambulatory difficulty', 'O3_0020210_00004', ' SCTID-82971005', ' NCITC- C50458', 'NCIMT- C132289'),
  ('Self-care difficulty', 'O3_0020210_00005', ' SCTID-228151002', ' NCITC- C132289', 'NCIMT- C132289'),
  ('Independent living difficulty', 'O3_0020210_00006', ' SCTID- 228151002', ' NCITC- C132289', 'NCIMT- C132289');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_Disability', 'PatientInformation_Disability_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_Disability_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_Disability_ID])
REFERENCES [dbo].[SVL_PatientInformation_Disability]([SVL_PatientInformation_Disability_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_CaregiverofDisabledPerson] (
    [SVL_PatientInformation_CaregiverofDisabledPerson_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_CaregiverofDisabledPerson] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_CaregiverofDisabledPerson] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_CaregiverofDisabledPerson_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_CaregiverofDisabledPerson] ([PatientInformation_CaregiverofDisabledPerson], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Hearing difficulty', 'O3_0020220_00001', ' SCTID-162340000 ', 'NCITC- C35731 ', ' NCIMT- C3887873 '),
  ('Vision difficulty', 'O3_0020220_00002', 'NULL', ' NCITC- C97109', ' NCIMT- C3553854'),
  ('Cognitive difficulty', 'O3_0020220_00003', ' SCTID-386806002 ', 'NCITC- C97250', ' NCIMT- C3276355'),
  ('Ambulatory difficulty', 'O3_0020220_00004', ' SCTID-82971005', ' NCITC- C132289', 'NCIMT- C132289'),
  ('Self-care difficulty', 'O3_0020220_00005', ' SCTID-228151002', ' NCITC- C132289', 'NCIMT- C132289'),
  ('Independent living difficulty', 'O3_0020220_00006', ' SCTID- 228151002', ' NCITC- C132289', 'NCIMT- C132289');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_CaregiverofDisabledPerson', 'PatientInformation_CaregiverofDisabledPerson_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_CaregiverofDisabledPerson_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_CaregiverofDisabledPerson_ID])
REFERENCES [dbo].[SVL_PatientInformation_CaregiverofDisabledPerson]([SVL_PatientInformation_CaregiverofDisabledPerson_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_EducationLevel] (
    [SVL_PatientInformation_EducationLevel_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_EducationLevel] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_EducationLevel] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_EducationLevel_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_EducationLevel] ([PatientInformation_EducationLevel], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0020230_00001', 'NULL', 'NULL', 'NULL'),
  ('Elementary School', 'O3_0020230_00002', 'NULL', 'NULL', 'NULL'),
  ('High School Or GED', 'O3_0020230_00003', 'NULL', 'NULL', 'NULL'),
  ('College no degree', 'O3_0020230_00004', 'NULL', 'NULL', 'NULL'),
  ('Associates degree vocational', 'O3_0020230_00005', 'NULL', 'NULL', 'NULL'),
  ('Associates degree academic', 'O3_0020230_00006', 'NULL', 'NULL', 'NULL'),
  ('Bachelor''s degree', 'O3_0020230_00007', 'NULL', 'NULL', 'NULL'),
  ('Master''s degree', 'O3_0020230_00008', 'NULL', 'NULL', 'NULL'),
  ('Professional degree', 'O3_0020230_00009', 'NULL', 'NULL', 'NULL'),
  ('Doctorate degree', 'O3_0020230_00010', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_EducationLevel', 'PatientInformation_EducationLevel_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_EducationLevel_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_EducationLevel_ID])
REFERENCES [dbo].[SVL_PatientInformation_EducationLevel]([SVL_PatientInformation_EducationLevel_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_LanguageSpokenAtHome] (
    [SVL_PatientInformation_LanguageSpokenAtHome_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_LanguageSpokenAtHome] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_LanguageSpokenAtHome] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_LanguageSpokenAtHome_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_LanguageSpokenAtHome] ([PatientInformation_LanguageSpokenAtHome], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('English', 'O3_0020240_00001', 'NULL', 'NULL', 'NULL'),
  ('Spanish', 'O3_0020240_00002', 'NULL', 'NULL', 'NULL'),
  ('Mandarin', 'O3_0020240_00003', 'NULL', 'NULL', 'NULL'),
  ('Cantonese', 'O3_0020240_00004', 'NULL', 'NULL', 'NULL'),
  ('Arabic', 'O3_0020240_00005', 'NULL', 'NULL', 'NULL'),
  ('Hindi', 'O3_0020240_00006', 'NULL', 'NULL', 'NULL'),
  ('French', 'O3_0020240_00007', 'NULL', 'NULL', 'NULL'),
  ('Russian', 'O3_0020240_00008', 'NULL', 'NULL', 'NULL'),
  ('Urdu', 'O3_0020240_00009', 'NULL', 'NULL', 'NULL'),
  ('Portuguese', 'O3_0020240_00010', 'NULL', 'NULL', 'NULL'),
  ('Bengali', 'O3_0020240_00011', 'NULL', 'NULL', 'NULL'),
  ('Japanese', 'O3_0020240_00012', 'NULL', 'NULL', 'NULL'),
  ('German', 'O3_0020240_00013', 'NULL', 'NULL', 'NULL'),
  ('Korean', 'O3_0020240_00014', 'NULL', 'NULL', 'NULL'),
  ('Sign Language', 'O3_0020240_00015', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0020240_00016', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_LanguageSpokenAtHome', 'PatientInformation_LanguageSpokenAtHome_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_LanguageSpokenAtHome_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_LanguageSpokenAtHome_ID])
REFERENCES [dbo].[SVL_PatientInformation_LanguageSpokenAtHome]([SVL_PatientInformation_LanguageSpokenAtHome_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientInformation_PHIDerivedMeasureItem] (
    [SVL_PatientInformation_PHIDerivedMeasureItem_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientInformation_PHIDerivedMeasureItem] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientInformation_PHIDerivedMeasureItem] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientInformation_PHIDerivedMeasureItem_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientInformation_PHIDerivedMeasureItem] ([PatientInformation_PHIDerivedMeasureItem], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Median Household Income from Postal Code', 'O3_0020250_00001', 'NULL', 'NULL', 'NULL'),
  ('Median Home Value from Postal Code', 'O3_0020250_00002', 'NULL', 'NULL', 'NULL'),
  ('Median Household Income from County', 'O3_0020250_00003', 'NULL', 'NULL', 'NULL'),
  ('Median Home Value from County', 'O3_0020250_00004', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0020250_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientInformation.PatientInformation_PHIDerivedMeasureItem', 'PatientInformation_PHIDerivedMeasureItem_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientInformation]
ALTER COLUMN [PatientInformation_PHIDerivedMeasureItem_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientInformation]
ADD FOREIGN KEY ([PatientInformation_PHIDerivedMeasureItem_ID])
REFERENCES [dbo].[SVL_PatientInformation_PHIDerivedMeasureItem]([SVL_PatientInformation_PHIDerivedMeasureItem_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_IsBaseline] (
    [SVL_DiagStaging_IsBaseline_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_IsBaseline] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_IsBaseline] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_IsBaseline_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_IsBaseline] ([DiagStaging_IsBaseline], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Yes', 'O3_0030260_00001', 'NULL', 'NULL', 'NULL'),
  ('No', 'O3_0030260_00002', 'NULL', 'NULL', 'NULL'),
  ('Unknown', 'O3_0030260_00003', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0030260_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_IsBaseline', 'DiagStaging_IsBaseline_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_IsBaseline_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_IsBaseline_ID])
REFERENCES [dbo].[SVL_DiagStaging_IsBaseline]([SVL_DiagStaging_IsBaseline_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_StagingSystem] (
    [SVL_DiagStaging_StagingSystem_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_StagingSystem] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_StagingSystem] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_StagingSystem_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_StagingSystem] ([DiagStaging_StagingSystem], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('AJCC9', 'O3_0030030_00001', 'NULL', 'NULL', 'NULL'),
  ('AJCC8', 'O3_0030030_00002', 'NULL', 'NULL', 'NULL'),
  ('AJCC7', 'O3_0030030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_StagingSystem', 'DiagStaging_StagingSystem_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_StagingSystem_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_StagingSystem_ID])
REFERENCES [dbo].[SVL_DiagStaging_StagingSystem]([SVL_DiagStaging_StagingSystem_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_ICDVersion] (
    [SVL_DiagStaging_ICDVersion_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_ICDVersion] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_ICDVersion] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_ICDVersion_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_ICDVersion] ([DiagStaging_ICDVersion], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('ICD9', 'O3_0030040_00001', ' SCTID-447563008', 'NCITC- C71890', 'NCIMT-C1137111'),
  ('ICD10', 'O3_0030040_00002', ' SCTID-447634004', 'NCITC- C71892', 'NCIMT-C1137110');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_ICDVersion', 'DiagStaging_ICDVersion_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_ICDVersion_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_ICDVersion_ID])
REFERENCES [dbo].[SVL_DiagStaging_ICDVersion]([SVL_DiagStaging_ICDVersion_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_Histology] (
    [SVL_DiagStaging_Histology_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_Histology] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_Histology] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_Histology_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_Histology] ([DiagStaging_Histology], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Adenocarcinoma', 'O3_0030070_00001', ' SCTID-399490008', ' NCITC- C2919', 'NCIMT- C0007112'),
  ('Adenocarcinoma with neuroendocrine features', 'O3_0030070_00002', 'NULL', 'NULL', 'NULL'),
  ('Ductal Carcinoma', 'O3_0030070_00003', 'NULL', 'NULL', 'NULL'),
  ('Small Cell Carcinoma ', 'O3_0030070_00004', ' SCTID-396198006', ' NCITC- C6766', 'NCIMT- C1300585'),
  ('Squamous cell carcinoma, conventional', 'O3_0030070_00023', 'NULL', 'NULL', 'NULL'),
  ('Squamous Cell - Keratinizing', 'O3_0030070_00024', 'NULL', 'NULL', 'NULL'),
  ('Squamous Cell - Nonkeratinizing', 'O3_0030070_00025', 'NULL', 'NULL', 'NULL'),
  ('Squamous Cell - Nonkeratinizing with maturation (“partially keratinizing”)', 'O3_0030070_00026', 'NULL', 'NULL', 'NULL'),
  ('Acantholytic squamous cell carcinoma', 'O3_0030070_00027', 'NULL', 'NULL', 'NULL'),
  ('Adenosquamous carcinoma', 'O3_0030070_00015', 'NULL', 'NULL', 'NULL'),
  ('Basaloid squamous cell carcinoma', 'O3_0030070_00028', 'NULL', 'NULL', 'NULL'),
  ('Papillary squamous cell carcinoma', 'O3_0030070_00029', 'NULL', 'NULL', 'NULL'),
  ('Spindle cell carcinoma', 'O3_0030070_00030', 'NULL', 'NULL', 'NULL'),
  ('Verrucous carcinoma', 'O3_0030070_00031', 'NULL', 'NULL', 'NULL'),
  ('Lymphoepithelial carcinoma', 'O3_0030070_00032', 'NULL', 'NULL', 'NULL'),
  ('Nonkeratinizing squamous cell carcinoma-Differentiated', 'O3_0030070_00033', 'NULL', 'NULL', 'NULL'),
  ('Nonkeratinizing squamous cell carcinoma-Undifferentiated', 'O3_0030070_00034', 'NULL', 'NULL', 'NULL'),
  ('Nasopharyngeal papillary adenocarcinoma', 'O3_0030070_00036', 'NULL', 'NULL', 'NULL'),
  ('Cannot be assessed, specify', 'O3_0030070_00037', 'NULL', 'NULL', 'NULL'),
  ('Salivary gland carcinoma, specify type', 'O3_0030070_00038', 'NULL', 'NULL', 'NULL'),
  ('Neuroendocrine carcinoma, specify type', 'O3_0030070_00039', 'NULL', 'NULL', 'NULL'),
  ('Acinar adenocarcinoma', 'O3_0030070_00005', 'NULL', 'NULL', 'NULL'),
  ('Mucinous (colloid) acinar adenocarcinoma', 'O3_0030070_00006', 'NULL', 'NULL', 'NULL'),
  ('Signet ring-like cell acinar adenocarcinoma', 'O3_0030070_00007', 'NULL', 'NULL', 'NULL'),
  ('Sarcomatoid acinar adenocarcinoma', 'O3_0030070_00008', 'NULL', 'NULL', 'NULL'),
  ('Prostatic intraepithelial neoplasia (high grade)', 'O3_0030070_00009', 'NULL', 'NULL', 'NULL'),
  ('Intraductal carcinoma', 'O3_0030070_00010', 'NULL', 'NULL', 'NULL'),
  ('Ductal Adenocarcinoma', 'O3_0030070_00011', 'NULL', 'NULL', 'NULL'),
  ('Papillary Ductal Adenocarcinoma', 'O3_0030070_00012', 'NULL', 'NULL', 'NULL'),
  ('Solid Ductal Adenocarcinomas', 'O3_0030070_00013', 'NULL', 'NULL', 'NULL'),
  ('Urothelial Carcinoma', 'O3_0030070_00014', 'NULL', 'NULL', 'NULL'),
  ('Squamous cell carcinoma', 'O3_0030070_00016', 'NULL', 'NULL', 'NULL'),
  ('Basal cell carcinoma', 'O3_0030070_00017', 'NULL', 'NULL', 'NULL'),
  ('Adenocarcinoma with neuroendocrine differentiation', 'O3_0030070_00018', 'NULL', 'NULL', 'NULL'),
  ('Well-differentiated neuroendocrine tumor', 'O3_0030070_00019', 'NULL', 'NULL', 'NULL'),
  ('Small cell neuroendocrine carcinoma', 'O3_0030070_00020', 'NULL', 'NULL', 'NULL'),
  ('Large cell neuroendocrine carcinoma', 'O3_0030070_00021', 'NULL', 'NULL', 'NULL'),
  ('Other', 'O3_0030070_00041', ' SCTID-254900004', ' NCITC- C4863', 'NCIMT- C0600139');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_Histology', 'DiagStaging_Histology_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_Histology_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_Histology_ID])
REFERENCES [dbo].[SVL_DiagStaging_Histology]([SVL_DiagStaging_Histology_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_DiseasePrimarySite] (
    [SVL_DiagStaging_DiseasePrimarySite_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_DiseasePrimarySite] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_DiseasePrimarySite] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_DiseasePrimarySite_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_DiseasePrimarySite] ([DiagStaging_DiseasePrimarySite], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('HN-Oral cavity', 'O3_0030200_00001', 'NULL', 'NULL', 'NULL'),
  ('HN-Oropharynx', 'O3_0030200_00002', 'NULL', 'NULL', 'NULL'),
  ('HN-Nasopharynx', 'O3_0030200_00003', 'NULL', 'NULL', 'NULL'),
  ('HN-Sinonasal', 'O3_0030200_00004', 'NULL', 'NULL', 'NULL'),
  ('HN-Larynx', 'O3_0030200_00005', 'NULL', 'NULL', 'NULL'),
  ('HN-Hypopharynx', 'O3_0030200_00006', 'NULL', 'NULL', 'NULL'),
  ('HN-Cutaneous melanoma', 'O3_0030200_00007', 'NULL', 'NULL', 'NULL'),
  ('HN-Cutaneous non-melanoma', 'O3_0030200_00008', 'NULL', 'NULL', 'NULL'),
  ('HN-Salivary', 'O3_0030200_00009', 'NULL', 'NULL', 'NULL'),
  ('HN-Unknown primary', 'O3_0030200_00010', 'NULL', 'NULL', 'NULL'),
  ('HN-Other', 'O3_0030200_00011', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0030200_00012', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_DiseasePrimarySite', 'DiagStaging_DiseasePrimarySite_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_DiseasePrimarySite_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_DiseasePrimarySite_ID])
REFERENCES [dbo].[SVL_DiagStaging_DiseasePrimarySite]([SVL_DiagStaging_DiseasePrimarySite_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_StagingTCategory] (
    [SVL_DiagStaging_StagingTCategory_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_StagingTCategory] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_StagingTCategory] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_StagingTCategory_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_StagingTCategory] ([DiagStaging_StagingTCategory], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Clinical', 'O3_0030080_00001', 'NULL', 'NULL', 'NULL'),
  ('Pathologic', 'O3_0030080_00002', 'NULL', 'NULL', 'NULL'),
  ('Radiographic', 'O3_0030080_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_StagingTCategory', 'DiagStaging_StagingTCategory_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_StagingTCategory_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_StagingTCategory_ID])
REFERENCES [dbo].[SVL_DiagStaging_StagingTCategory]([SVL_DiagStaging_StagingTCategory_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_StagingT] (
    [SVL_DiagStaging_StagingT_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_StagingT] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_StagingT] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_StagingT_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_StagingT] ([DiagStaging_StagingT], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('T0', 'O3_0030090_00012', 'NULL', 'NULL', 'NULL'),
  ('T1', 'O3_0030090_00013', 'NULL', 'NULL', 'NULL'),
  ('T1a', 'O3_0030090_00001', 'NULL', 'NULL', 'NULL'),
  ('T1b', 'O3_0030090_00002', 'NULL', 'NULL', 'NULL'),
  ('T1c', 'O3_0030090_00003', 'NULL', 'NULL', 'NULL'),
  ('T2', 'O3_0030090_00014', 'NULL', 'NULL', 'NULL'),
  ('T2a', 'O3_0030090_00004', 'NULL', 'NULL', 'NULL'),
  ('T2b', 'O3_0030090_00005', 'NULL', 'NULL', 'NULL'),
  ('T2c', 'O3_0030090_00006', 'NULL', 'NULL', 'NULL'),
  ('T3', 'O3_0030090_00015', 'NULL', 'NULL', 'NULL'),
  ('T3a', 'O3_0030090_00007', 'NULL', 'NULL', 'NULL'),
  ('T3b', 'O3_0030090_00008', 'NULL', 'NULL', 'NULL'),
  ('T4', 'O3_0030090_00009', 'NULL', 'NULL', 'NULL'),
  ('Tx (only if prostate has been removed)', 'O3_0030090_00010', 'NULL', 'NULL', 'NULL'),
  ('Information Not Available', 'O3_0030090_00011', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0030090_00016', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_StagingT', 'DiagStaging_StagingT_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_StagingT_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_StagingT_ID])
REFERENCES [dbo].[SVL_DiagStaging_StagingT]([SVL_DiagStaging_StagingT_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_StagingClinicalN] (
    [SVL_DiagStaging_StagingClinicalN_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_StagingClinicalN] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_StagingClinicalN] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_StagingClinicalN_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_StagingClinicalN] ([DiagStaging_StagingClinicalN], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('N0', 'O3_0030220_00001', 'NULL', 'NULL', 'NULL'),
  ('N1', 'O3_0030220_00002', 'NULL', 'NULL', 'NULL'),
  ('N2', 'O3_0030220_00003', 'NULL', 'NULL', 'NULL'),
  ('N2a', 'O3_0030220_00004', 'NULL', 'NULL', 'NULL'),
  ('N2b', 'O3_0030220_00005', 'NULL', 'NULL', 'NULL'),
  ('N2c', 'O3_0030220_00006', 'NULL', 'NULL', 'NULL'),
  ('N3', 'O3_0030220_00007', 'NULL', 'NULL', 'NULL'),
  ('N3a', 'O3_0030220_00008', 'NULL', 'NULL', 'NULL'),
  ('N3b', 'O3_0030220_00009', 'NULL', 'NULL', 'NULL'),
  ('Nx', 'O3_0030220_00010', 'NULL', 'NULL', 'NULL'),
  ('Information Not Available', 'O3_0030220_00011', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_StagingClinicalN', 'DiagStaging_StagingClinicalN_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_StagingClinicalN_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_StagingClinicalN_ID])
REFERENCES [dbo].[SVL_DiagStaging_StagingClinicalN]([SVL_DiagStaging_StagingClinicalN_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_StagingPathologicN] (
    [SVL_DiagStaging_StagingPathologicN_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_StagingPathologicN] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_StagingPathologicN] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_StagingPathologicN_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_StagingPathologicN] ([DiagStaging_StagingPathologicN], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('N0', 'O3_0030230_00001', 'NULL', 'NULL', 'NULL'),
  ('N1', 'O3_0030230_00002', 'NULL', 'NULL', 'NULL'),
  ('N2', 'O3_0030230_00003', 'NULL', 'NULL', 'NULL'),
  ('N2a', 'O3_0030230_00004', 'NULL', 'NULL', 'NULL'),
  ('N2b', 'O3_0030230_00005', 'NULL', 'NULL', 'NULL'),
  ('N2c', 'O3_0030230_00006', 'NULL', 'NULL', 'NULL'),
  ('N3', 'O3_0030230_00007', 'NULL', 'NULL', 'NULL'),
  ('N3a', 'O3_0030230_00008', 'NULL', 'NULL', 'NULL'),
  ('N3b', 'O3_0030230_00009', 'NULL', 'NULL', 'NULL'),
  ('Nx', 'O3_0030230_00010', 'NULL', 'NULL', 'NULL'),
  ('Information Not Available', 'O3_0030230_00011', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_StagingPathologicN', 'DiagStaging_StagingPathologicN_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_StagingPathologicN_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_StagingPathologicN_ID])
REFERENCES [dbo].[SVL_DiagStaging_StagingPathologicN]([SVL_DiagStaging_StagingPathologicN_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_StagingM] (
    [SVL_DiagStaging_StagingM_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_StagingM] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_StagingM] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_StagingM_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_StagingM] ([DiagStaging_StagingM], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('M0', 'O3_0030110_00001', 'NULL', 'NULL', 'NULL'),
  ('M1', 'O3_0030110_00007', 'NULL', 'NULL', 'NULL'),
  ('M1a', 'O3_0030110_00002', 'NULL', 'NULL', 'NULL'),
  ('M1b', 'O3_0030110_00003', 'NULL', 'NULL', 'NULL'),
  ('M1c', 'O3_0030110_00004', 'NULL', 'NULL', 'NULL'),
  ('Mx', 'O3_0030110_00005', 'NULL', 'NULL', 'NULL'),
  ('Information Not Available', 'O3_0030110_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_StagingM', 'DiagStaging_StagingM_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_StagingM_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_StagingM_ID])
REFERENCES [dbo].[SVL_DiagStaging_StagingM]([SVL_DiagStaging_StagingM_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_ImagingBiopsy] (
    [SVL_DiagStaging_ImagingBiopsy_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_ImagingBiopsy] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_ImagingBiopsy] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_ImagingBiopsy_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_ImagingBiopsy] ([DiagStaging_ImagingBiopsy], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Ultrasound', 'O3_0030120_00001', ' SCTID- 277667006', ' NCITC- C93022', ' NCIMT- C0456900'),
  ('Magnetic Resonance Imaging', 'O3_0030120_00002', ' SCTID- 277592004', ' NCITC-C179439', ' NCIMT-CL1662205 '),
  ('Computed Tomography', 'O3_0030120_00003', ' SCTID- 277591006', ' NCITC-C137909', ' NCIMT-C0456853 ');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_ImagingBiopsy', 'DiagStaging_ImagingBiopsy_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_ImagingBiopsy_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_ImagingBiopsy_ID])
REFERENCES [dbo].[SVL_DiagStaging_ImagingBiopsy]([SVL_DiagStaging_ImagingBiopsy_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_PathologyMolecularTestName] (
    [SVL_DiagStaging_PathologyMolecularTestName_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_PathologyMolecularTestName] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_PathologyMolecularTestName] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_PathologyMolecularTestName_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_PathologyMolecularTestName] ([DiagStaging_PathologyMolecularTestName], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('HPV high risk ISH', 'O3_0030130_00006', 'NULL', 'NULL', 'NULL'),
  ('EBV', 'O3_0030130_00007', 'NULL', 'NULL', 'NULL'),
  ('CPS (combined positive score)/PDL1', 'O3_0030130_00008', 'NULL', 'NULL', 'NULL'),
  ('ER/PR', 'O3_0030130_00009', 'NULL', 'NULL', 'NULL'),
  ('AR', 'O3_0030130_00010', 'NULL', 'NULL', 'NULL'),
  ('Her2Neu', 'O3_0030130_00011', 'NULL', 'NULL', 'NULL'),
  ('NGS', 'O3_0030130_00012', 'NULL', 'NULL', 'NULL'),
  ('EGFR', 'O3_0030130_00013', 'NULL', 'NULL', 'NULL'),
  ('BRAF', 'O3_0030130_00014', 'NULL', 'NULL', 'NULL'),
  ('DECIPHER', 'O3_0030130_00001', ' SCTID-_', 'NCITC- C128181', 'NCIMT- CL509435'),
  ('Prolaris', 'O3_0030130_00002', ' SCTID-_', 'NCITC- C150175', 'NULL'),
  ('Oncotype DX Genomic Prostate Score', 'O3_0030130_00003', 'NULL', 'NULL', 'NULL'),
  ('ProMark', 'O3_0030130_00004', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0030130_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_PathologyMolecularTestName', 'DiagStaging_PathologyMolecularTestName_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_PathologyMolecularTestName_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_PathologyMolecularTestName_ID])
REFERENCES [dbo].[SVL_DiagStaging_PathologyMolecularTestName]([SVL_DiagStaging_PathologyMolecularTestName_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_DiseaseExtentAssessmentMethod] (
    [SVL_DiagStaging_DiseaseExtentAssessmentMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_DiseaseExtentAssessmentMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_DiseaseExtentAssessmentMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_DiseaseExtentAssessmentMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_DiseaseExtentAssessmentMethod] ([DiagStaging_DiseaseExtentAssessmentMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('MRI', 'O3_0030160_00001', 'NULL', 'NULL', 'NULL'),
  ('PSMA-PET', 'O3_0030160_00002', 'NULL', 'NULL', 'NULL'),
  ('Fluciclovine - PET', 'O3_0030160_00003', 'NULL', 'NULL', 'NULL'),
  ('Choline PET', 'O3_0030160_00004', 'NULL', 'NULL', 'NULL'),
  ('CT Scan', 'O3_0030160_00005', 'NULL', 'NULL', 'NULL'),
  ('DECIPHER Genomic score', 'O3_0030160_00006', 'NULL', 'NULL', 'NULL'),
  ('Liquid Biopsy', 'O3_0030160_00007', 'NULL', 'NULL', 'NULL'),
  ('Bone Scan', 'O3_0030160_00008', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0030160_00009', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_DiseaseExtentAssessmentMethod', 'DiagStaging_DiseaseExtentAssessmentMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_DiseaseExtentAssessmentMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_DiseaseExtentAssessmentMethod_ID])
REFERENCES [dbo].[SVL_DiagStaging_DiseaseExtentAssessmentMethod]([SVL_DiagStaging_DiseaseExtentAssessmentMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_GeneticSusceptibilityMarkers] (
    [SVL_DiagStaging_GeneticSusceptibilityMarkers_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_GeneticSusceptibilityMarkers] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_GeneticSusceptibilityMarkers] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_GeneticSusceptibilityMarkers_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_GeneticSusceptibilityMarkers] ([DiagStaging_GeneticSusceptibilityMarkers], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('BRCA 1', 'O3_0030180_00001', 'NULL', 'NULL', 'NULL'),
  ('BRCA 2', 'O3_0030180_00002', 'NULL', 'NULL', 'NULL'),
  ('HOXB13', 'O3_0030180_00003', 'NULL', 'NULL', 'NULL'),
  ('ATM', 'O3_0030180_00004', 'NULL', 'NULL', 'NULL'),
  ('Hereditary Breast and Ovarian Syndrome', 'O3_0030180_00005', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0030180_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_GeneticSusceptibilityMarkers', 'DiagStaging_GeneticSusceptibilityMarkers_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_GeneticSusceptibilityMarkers_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_GeneticSusceptibilityMarkers_ID])
REFERENCES [dbo].[SVL_DiagStaging_GeneticSusceptibilityMarkers]([SVL_DiagStaging_GeneticSusceptibilityMarkers_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_PrimaryICDCodesWhenTreatingSecondary] (
    [SVL_DiagStaging_PrimaryICDCodesWhenTreatingSecondary_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_PrimaryICDCodesWhenTreatingSecondary] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_PrimaryICDCodesWhenTreatingSecondary] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_PrimaryICDCodesWhenTreatingSecondary_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_PrimaryICDCodesWhenTreatingSecondary] ([DiagStaging_PrimaryICDCodesWhenTreatingSecondary], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Current ICD standard value set e.g. ICD10', 'O3_0030190_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_PrimaryICDCodesWhenTreatingSecondary', 'DiagStaging_PrimaryICDCodesWhenTreatingSecondary_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_PrimaryICDCodesWhenTreatingSecondary_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_PrimaryICDCodesWhenTreatingSecondary_ID])
REFERENCES [dbo].[SVL_DiagStaging_PrimaryICDCodesWhenTreatingSecondary]([SVL_DiagStaging_PrimaryICDCodesWhenTreatingSecondary_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStaging_SurgicalMarginStatus] (
    [SVL_DiagStaging_SurgicalMarginStatus_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStaging_SurgicalMarginStatus] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStaging_SurgicalMarginStatus] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStaging_SurgicalMarginStatus_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStaging_SurgicalMarginStatus] ([DiagStaging_SurgicalMarginStatus], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Negative', 'O3_0030250_00001', 'NULL', 'NULL', 'NULL'),
  ('Positive', 'O3_0030250_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStaging.DiagStaging_SurgicalMarginStatus', 'DiagStaging_SurgicalMarginStatus_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStaging]
ALTER COLUMN [DiagStaging_SurgicalMarginStatus_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStaging]
ADD FOREIGN KEY ([DiagStaging_SurgicalMarginStatus_ID])
REFERENCES [dbo].[SVL_DiagStaging_SurgicalMarginStatus]([SVL_DiagStaging_SurgicalMarginStatus_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingHN_MarginStatus] (
    [SVL_DiagStagingHN_MarginStatus_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingHN_MarginStatus] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingHN_MarginStatus] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingHN_MarginStatus_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingHN_MarginStatus] ([DiagStagingHN_MarginStatus], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Negative', 'O3_0450060_00001', 'NULL', 'NULL', 'NULL'),
  ('Positive', 'O3_0450060_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingHN.DiagStagingHN_MarginStatus', 'DiagStagingHN_MarginStatus_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingHN]
ALTER COLUMN [DiagStagingHN_MarginStatus_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingHN]
ADD FOREIGN KEY ([DiagStagingHN_MarginStatus_ID])
REFERENCES [dbo].[SVL_DiagStagingHN_MarginStatus]([SVL_DiagStagingHN_MarginStatus_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingHN_ImagingForStagingT] (
    [SVL_DiagStagingHN_ImagingForStagingT_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingHN_ImagingForStagingT] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingHN_ImagingForStagingT] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingHN_ImagingForStagingT_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingHN_ImagingForStagingT] ([DiagStagingHN_ImagingForStagingT], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Magnetic Resonance Imaging', 'O3_0450110_00001', 'NULL', 'NULL', 'NULL'),
  ('FDG-PET', 'O3_0450110_00002', 'NULL', 'NULL', 'NULL'),
  ('Dotatate PET', 'O3_0450110_00003', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomography', 'O3_0450110_00004', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0450110_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingHN.DiagStagingHN_ImagingForStagingT', 'DiagStagingHN_ImagingForStagingT_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingHN]
ALTER COLUMN [DiagStagingHN_ImagingForStagingT_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingHN]
ADD FOREIGN KEY ([DiagStagingHN_ImagingForStagingT_ID])
REFERENCES [dbo].[SVL_DiagStagingHN_ImagingForStagingT]([SVL_DiagStagingHN_ImagingForStagingT_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingHN_ImagingForStagingN] (
    [SVL_DiagStagingHN_ImagingForStagingN_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingHN_ImagingForStagingN] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingHN_ImagingForStagingN] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingHN_ImagingForStagingN_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingHN_ImagingForStagingN] ([DiagStagingHN_ImagingForStagingN], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Magnetic Resonance Imaging', 'O3_0450120_00001', 'NULL', 'NULL', 'NULL'),
  ('FDG-PET', 'O3_0450120_00002', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomography', 'O3_0450120_00003', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0450120_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingHN.DiagStagingHN_ImagingForStagingN', 'DiagStagingHN_ImagingForStagingN_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingHN]
ALTER COLUMN [DiagStagingHN_ImagingForStagingN_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingHN]
ADD FOREIGN KEY ([DiagStagingHN_ImagingForStagingN_ID])
REFERENCES [dbo].[SVL_DiagStagingHN_ImagingForStagingN]([SVL_DiagStagingHN_ImagingForStagingN_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingHN_ImagingforStagingM] (
    [SVL_DiagStagingHN_ImagingforStagingM_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingHN_ImagingforStagingM] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingHN_ImagingforStagingM] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingHN_ImagingforStagingM_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingHN_ImagingforStagingM] ([DiagStagingHN_ImagingforStagingM], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Magnetic Resonance Imaging', 'O3_0450130_00001', 'NULL', 'NULL', 'NULL'),
  ('FDG-PET', 'O3_0450130_00002', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomography', 'O3_0450130_00003', 'NULL', 'NULL', 'NULL'),
  ('Bone Scan', 'O3_0450130_00004', 'NULL', 'NULL', 'NULL'),
  ('Imaging not used', 'O3_0450130_00005', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0450130_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingHN.DiagStagingHN_ImagingforStagingM', 'DiagStagingHN_ImagingforStagingM_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingHN]
ALTER COLUMN [DiagStagingHN_ImagingforStagingM_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingHN]
ADD FOREIGN KEY ([DiagStagingHN_ImagingforStagingM_ID])
REFERENCES [dbo].[SVL_DiagStagingHN_ImagingforStagingM]([SVL_DiagStagingHN_ImagingforStagingM_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingHN_TypeOfBiopsyAtDiagnosis] (
    [SVL_DiagStagingHN_TypeOfBiopsyAtDiagnosis_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingHN_TypeOfBiopsyAtDiagnosis] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingHN_TypeOfBiopsyAtDiagnosis] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingHN_TypeOfBiopsyAtDiagnosis_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingHN_TypeOfBiopsyAtDiagnosis] ([DiagStagingHN_TypeOfBiopsyAtDiagnosis], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('FNA lymph node', 'O3_0450180_00001', 'NULL', 'NULL', 'NULL'),
  ('Core biopsy', 'O3_0450180_00002', 'NULL', 'NULL', 'NULL'),
  ('Incisional biopsy', 'O3_0450180_00003', 'NULL', 'NULL', 'NULL'),
  ('Excisional biopsy', 'O3_0450180_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingHN.DiagStagingHN_TypeOfBiopsyAtDiagnosis', 'DiagStagingHN_TypeOfBiopsyAtDiagnosis_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingHN]
ALTER COLUMN [DiagStagingHN_TypeOfBiopsyAtDiagnosis_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingHN]
ADD FOREIGN KEY ([DiagStagingHN_TypeOfBiopsyAtDiagnosis_ID])
REFERENCES [dbo].[SVL_DiagStagingHN_TypeOfBiopsyAtDiagnosis]([SVL_DiagStagingHN_TypeOfBiopsyAtDiagnosis_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingProst_ProstatectomyMarginStatus] (
    [SVL_DiagStagingProst_ProstatectomyMarginStatus_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingProst_ProstatectomyMarginStatus] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingProst_ProstatectomyMarginStatus] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingProst_ProstatectomyMarginStatus_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingProst_ProstatectomyMarginStatus] ([DiagStagingProst_ProstatectomyMarginStatus], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Negative', 'O3_0040040_00001', 'NULL', 'NULL', 'NULL'),
  ('Positive', 'O3_0040040_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingProst.DiagStagingProst_ProstatectomyMarginStatus', 'DiagStagingProst_ProstatectomyMarginStatus_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingProst]
ALTER COLUMN [DiagStagingProst_ProstatectomyMarginStatus_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingProst]
ADD FOREIGN KEY ([DiagStagingProst_ProstatectomyMarginStatus_ID])
REFERENCES [dbo].[SVL_DiagStagingProst_ProstatectomyMarginStatus]([SVL_DiagStagingProst_ProstatectomyMarginStatus_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingProst_ImagingForStagingT] (
    [SVL_DiagStagingProst_ImagingForStagingT_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingProst_ImagingForStagingT] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingProst_ImagingForStagingT] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingProst_ImagingForStagingT_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingProst_ImagingForStagingT] ([DiagStagingProst_ImagingForStagingT], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Magnetic Resonance Imaging', 'O3_0040060_00001', 'NULL', 'NULL', 'NULL'),
  ('PSMA-Positron emission tomography', 'O3_0040060_00002', 'NULL', 'NULL', 'NULL'),
  ('Fluciclovine - Positron emission tomography', 'O3_0040060_00003', 'NULL', 'NULL', 'NULL'),
  ('Choline Positron emission tomography', 'O3_0040060_00004', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomography', 'O3_0040060_00005', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0040060_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingProst.DiagStagingProst_ImagingForStagingT', 'DiagStagingProst_ImagingForStagingT_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingProst]
ALTER COLUMN [DiagStagingProst_ImagingForStagingT_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingProst]
ADD FOREIGN KEY ([DiagStagingProst_ImagingForStagingT_ID])
REFERENCES [dbo].[SVL_DiagStagingProst_ImagingForStagingT]([SVL_DiagStagingProst_ImagingForStagingT_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingProst_ImagingForStagingN] (
    [SVL_DiagStagingProst_ImagingForStagingN_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingProst_ImagingForStagingN] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingProst_ImagingForStagingN] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingProst_ImagingForStagingN_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingProst_ImagingForStagingN] ([DiagStagingProst_ImagingForStagingN], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Magnetic Resonance Imaging', 'O3_0040070_00001', 'NULL', 'NULL', 'NULL'),
  ('PSMA-Positron emission tomography', 'O3_0040070_00002', 'NULL', 'NULL', 'NULL'),
  ('Fluciclovine - Positron emission tomography', 'O3_0040070_00003', 'NULL', 'NULL', 'NULL'),
  ('Choline Positron emission tomography', 'O3_0040070_00004', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomography', 'O3_0040070_00005', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0040070_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingProst.DiagStagingProst_ImagingForStagingN', 'DiagStagingProst_ImagingForStagingN_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingProst]
ALTER COLUMN [DiagStagingProst_ImagingForStagingN_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingProst]
ADD FOREIGN KEY ([DiagStagingProst_ImagingForStagingN_ID])
REFERENCES [dbo].[SVL_DiagStagingProst_ImagingForStagingN]([SVL_DiagStagingProst_ImagingForStagingN_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingProst_ImagingforStagingM] (
    [SVL_DiagStagingProst_ImagingforStagingM_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingProst_ImagingforStagingM] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingProst_ImagingforStagingM] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingProst_ImagingforStagingM_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingProst_ImagingforStagingM] ([DiagStagingProst_ImagingforStagingM], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Magnetic Resonance Imaging', 'O3_0040080_00001', 'NULL', 'NULL', 'NULL'),
  ('PSMA - Positron emission tomography', 'O3_0040080_00002', 'NULL', 'NULL', 'NULL'),
  ('Fluciclovine - Positron emission tomography', 'O3_0040080_00003', 'NULL', 'NULL', 'NULL'),
  ('Choline Positron emission tomography', 'O3_0040080_00004', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomography', 'O3_0040080_00005', 'NULL', 'NULL', 'NULL'),
  ('Bone Scan', 'O3_0040080_00006', 'NULL', 'NULL', 'NULL'),
  ('Imaging not used', 'O3_0040080_00007', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0040080_00008', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingProst.DiagStagingProst_ImagingforStagingM', 'DiagStagingProst_ImagingforStagingM_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingProst]
ALTER COLUMN [DiagStagingProst_ImagingforStagingM_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingProst]
ADD FOREIGN KEY ([DiagStagingProst_ImagingforStagingM_ID])
REFERENCES [dbo].[SVL_DiagStagingProst_ImagingforStagingM]([SVL_DiagStagingProst_ImagingforStagingM_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingTreatmentOverview_RadTherAsPartOfTreatment] (
    [SVL_DiagStagingTreatmentOverview_RadTherAsPartOfTreatment_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingTreatmentOverview_RadTherAsPartOfTreatment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingTreatmentOverview_RadTherAsPartOfTreatment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingTreatmentOverview_RadTherAsPartOfTreatment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingTreatmentOverview_RadTherAsPartOfTreatment] ([DiagStagingTreatmentOverview_RadTherAsPartOfTreatment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Yes', 'O3_0050030_00001', 'NULL', 'NULL', 'NULL'),
  ('No', 'O3_0050030_00002', 'NULL', 'NULL', 'NULL'),
  ('Indeterminate', 'O3_0050030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingTreatmentOverview.DiagStagingTreatmentOverview_RadTherAsPartOfTreatment', 'DiagStagingTreatmentOverview_RadTherAsPartOfTreatment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingTreatmentOverview]
ALTER COLUMN [DiagStagingTreatmentOverview_RadTherAsPartOfTreatment_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingTreatmentOverview]
ADD FOREIGN KEY ([DiagStagingTreatmentOverview_RadTherAsPartOfTreatment_ID])
REFERENCES [dbo].[SVL_DiagStagingTreatmentOverview_RadTherAsPartOfTreatment]([SVL_DiagStagingTreatmentOverview_RadTherAsPartOfTreatment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingTreatmentOverview_SysTherAsPartOfTreatment] (
    [SVL_DiagStagingTreatmentOverview_SysTherAsPartOfTreatment_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingTreatmentOverview_SysTherAsPartOfTreatment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingTreatmentOverview_SysTherAsPartOfTreatment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingTreatmentOverview_SysTherAsPartOfTreatment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingTreatmentOverview_SysTherAsPartOfTreatment] ([DiagStagingTreatmentOverview_SysTherAsPartOfTreatment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Yes', 'O3_0050050_00001', 'NULL', 'NULL', 'NULL'),
  ('No', 'O3_0050050_00002', 'NULL', 'NULL', 'NULL'),
  ('Indeterminate', 'O3_0050050_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingTreatmentOverview.DiagStagingTreatmentOverview_SysTherAsPartOfTreatment', 'DiagStagingTreatmentOverview_SysTherAsPartOfTreatment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingTreatmentOverview]
ALTER COLUMN [DiagStagingTreatmentOverview_SysTherAsPartOfTreatment_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingTreatmentOverview]
ADD FOREIGN KEY ([DiagStagingTreatmentOverview_SysTherAsPartOfTreatment_ID])
REFERENCES [dbo].[SVL_DiagStagingTreatmentOverview_SysTherAsPartOfTreatment]([SVL_DiagStagingTreatmentOverview_SysTherAsPartOfTreatment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DiagStagingTreatmentOverview_SurgAsPartOfTreatment] (
    [SVL_DiagStagingTreatmentOverview_SurgAsPartOfTreatment_ID][int] IDENTITY(1,1) NOT NULL,
    [DiagStagingTreatmentOverview_SurgAsPartOfTreatment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DiagStagingTreatmentOverview_SurgAsPartOfTreatment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DiagStagingTreatmentOverview_SurgAsPartOfTreatment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DiagStagingTreatmentOverview_SurgAsPartOfTreatment] ([DiagStagingTreatmentOverview_SurgAsPartOfTreatment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Yes', 'O3_0050070_00001', 'NULL', 'NULL', 'NULL'),
  ('No', 'O3_0050070_00002', 'NULL', 'NULL', 'NULL'),
  ('Indeterminate', 'O3_0050070_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DiagStagingTreatmentOverview.DiagStagingTreatmentOverview_SurgAsPartOfTreatment', 'DiagStagingTreatmentOverview_SurgAsPartOfTreatment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DiagStagingTreatmentOverview]
ALTER COLUMN [DiagStagingTreatmentOverview_SurgAsPartOfTreatment_ID] int NULL;
GO

ALTER TABLE [dbo].[DiagStagingTreatmentOverview]
ADD FOREIGN KEY ([DiagStagingTreatmentOverview_SurgAsPartOfTreatment_ID])
REFERENCES [dbo].[SVL_DiagStagingTreatmentOverview_SurgAsPartOfTreatment]([SVL_DiagStagingTreatmentOverview_SurgAsPartOfTreatment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientTreatmentOutcome_IsBaseline] (
    [SVL_PatientTreatmentOutcome_IsBaseline_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientTreatmentOutcome_IsBaseline] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientTreatmentOutcome_IsBaseline] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientTreatmentOutcome_IsBaseline_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientTreatmentOutcome_IsBaseline] ([PatientTreatmentOutcome_IsBaseline], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Yes', 'O3_0060070_00001', 'NULL', 'NULL', 'NULL'),
  ('No', 'O3_0060070_00002', 'NULL', 'NULL', 'NULL'),
  ('Unknown', 'O3_0060070_00003', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0060070_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientTreatmentOutcome.PatientTreatmentOutcome_IsBaseline', 'PatientTreatmentOutcome_IsBaseline_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ALTER COLUMN [PatientTreatmentOutcome_IsBaseline_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ADD FOREIGN KEY ([PatientTreatmentOutcome_IsBaseline_ID])
REFERENCES [dbo].[SVL_PatientTreatmentOutcome_IsBaseline]([SVL_PatientTreatmentOutcome_IsBaseline_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientTreatmentOutcome_DiseaseStatus] (
    [SVL_PatientTreatmentOutcome_DiseaseStatus_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientTreatmentOutcome_DiseaseStatus] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientTreatmentOutcome_DiseaseStatus] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientTreatmentOutcome_DiseaseStatus_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientTreatmentOutcome_DiseaseStatus] ([PatientTreatmentOutcome_DiseaseStatus], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Under Treatment', 'O3_0060030_00001', 'NULL', 'NULL', 'NULL'),
  ('No evidence of disease (NED)', 'O3_0060030_00002', 'NULL', 'NULL', 'NULL'),
  ('Stable Disease', 'O3_0060030_00003', 'NULL', 'NULL', 'NULL'),
  ('Partial Response', 'O3_0060030_00004', 'NULL', 'NULL', 'NULL'),
  ('Progressive Disease', 'O3_0060030_00005', 'NULL', 'NULL', 'NULL'),
  ('Indeterminate (possible pseudo-progression)', 'O3_0060030_00006', 'NULL', 'NULL', 'NULL'),
  ('Complete Response', 'O3_0060030_00007', 'NULL', 'NULL', 'NULL'),
  ('Biochemical Recurrence (serum)', 'O3_0060030_00014', 'NULL', 'NULL', 'NULL'),
  ('Biochemical (ctDNA) Recurrence', 'O3_0060030_00015', 'NULL', 'NULL', 'NULL'),
  ('Primary Recurrence', 'O3_0060030_00009', 'NULL', 'NULL', 'NULL'),
  ('Local Recurrence', 'O3_0060030_00010', 'NULL', 'NULL', 'NULL'),
  ('Nodal Recurrence', 'O3_0060030_00011', 'NULL', 'NULL', 'NULL'),
  ('Distant Recurrence', 'O3_0060030_00012', 'NULL', 'NULL', 'NULL'),
  ('Second Primary Cancer', 'O3_0060030_00016', 'NULL', 'NULL', 'NULL'),
  ('Metastatic', 'O3_0060030_00017', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0060030_00013', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientTreatmentOutcome.PatientTreatmentOutcome_DiseaseStatus', 'PatientTreatmentOutcome_DiseaseStatus_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ALTER COLUMN [PatientTreatmentOutcome_DiseaseStatus_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ADD FOREIGN KEY ([PatientTreatmentOutcome_DiseaseStatus_ID])
REFERENCES [dbo].[SVL_PatientTreatmentOutcome_DiseaseStatus]([SVL_PatientTreatmentOutcome_DiseaseStatus_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus] (
    [SVL_PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus] ([PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Physical exam', 'O3_0060040_00001', 'NULL', 'NULL', 'NULL'),
  ('PSA', 'O3_0060040_00002', 'NULL', 'NULL', 'NULL'),
  ('Plain film radiographs', 'O3_0060040_00003', 'NULL', 'NULL', 'NULL'),
  ('Bone scan', 'O3_0060040_00004', 'NULL', 'NULL', 'NULL'),
  ('Magnetic Resonance Imaging', 'O3_0060040_00005', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomograph', 'O3_0060040_00006', 'NULL', 'NULL', 'NULL'),
  ('Biochemical marker (PSA)', 'O3_0060040_00007', 'NULL', 'NULL', 'NULL'),
  ('PET-CT (PSMA)', 'O3_0060040_00008', 'NULL', 'NULL', 'NULL'),
  ('PET-CT (F-18 fluciclovine)', 'O3_0060040_00009', 'NULL', 'NULL', 'NULL'),
  ('PET-CT (C-11 choline)', 'O3_0060040_00010', 'NULL', 'NULL', 'NULL'),
  ('ctDNA', 'O3_0060040_00012', 'NULL', 'NULL', 'NULL'),
  ('biopsy', 'O3_0060040_00013', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0060040_00011', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientTreatmentOutcome.PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus', 'PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ALTER COLUMN [PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ADD FOREIGN KEY ([PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus_ID])
REFERENCES [dbo].[SVL_PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus]([SVL_PatientTreatmentOutcome_EvaluationBasisOfDiseaseStatus_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientTreatmentOutcome_SiteOfRecurrence] (
    [SVL_PatientTreatmentOutcome_SiteOfRecurrence_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientTreatmentOutcome_SiteOfRecurrence] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientTreatmentOutcome_SiteOfRecurrence] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientTreatmentOutcome_SiteOfRecurrence_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientTreatmentOutcome_SiteOfRecurrence] ([PatientTreatmentOutcome_SiteOfRecurrence], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Primary', 'O3_0060050_00013', 'NULL', 'NULL', 'NULL'),
  ('Primary- None', 'O3_0060050_00001', 'NULL', 'NULL', 'NULL'),
  ('Primary - Prostate', 'O3_0060050_00002', 'NULL', 'NULL', 'NULL'),
  ('Primary - Seminal Vesicles', 'O3_0060050_00003', 'NULL', 'NULL', 'NULL'),
  ('Nodal-None', 'O3_0060050_00004', 'NULL', 'NULL', 'NULL'),
  ('Nodal-Pelvic', 'O3_0060050_00005', 'NULL', 'NULL', 'NULL'),
  ('Nodal-Aortic', 'O3_0060050_00006', 'NULL', 'NULL', 'NULL'),
  ('Nodal-Cervical', 'O3_0060050_00014', 'NULL', 'NULL', 'NULL'),
  ('Nodal-Distant', 'O3_0060050_00007', 'NULL', 'NULL', 'NULL'),
  ('Distant-None', 'O3_0060050_00008', 'NULL', 'NULL', 'NULL'),
  ('Distant- CHAARTED-Low Volume', 'O3_0060050_00009', 'NULL', 'NULL', 'NULL'),
  ('Distant-CHAARTED-High Volume', 'O3_0060050_00010', 'NULL', 'NULL', 'NULL'),
  ('Metastatic-Bone', 'O3_0060050_00011', 'NULL', 'NULL', 'NULL'),
  ('Metastatic-Viscera', 'O3_0060050_00012', 'NULL', 'NULL', 'NULL'),
  ('Metastatic-Lung', 'O3_0060050_00015', 'NULL', 'NULL', 'NULL'),
  ('Metastatic-Liver', 'O3_0060050_00016', 'NULL', 'NULL', 'NULL'),
  ('Metastatic-Mediastinum', 'O3_0060050_00017', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientTreatmentOutcome.PatientTreatmentOutcome_SiteOfRecurrence', 'PatientTreatmentOutcome_SiteOfRecurrence_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ALTER COLUMN [PatientTreatmentOutcome_SiteOfRecurrence_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ADD FOREIGN KEY ([PatientTreatmentOutcome_SiteOfRecurrence_ID])
REFERENCES [dbo].[SVL_PatientTreatmentOutcome_SiteOfRecurrence]([SVL_PatientTreatmentOutcome_SiteOfRecurrence_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientTreatmentOutcome_RecurrenceInVOutField] (
    [SVL_PatientTreatmentOutcome_RecurrenceInVOutField_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientTreatmentOutcome_RecurrenceInVOutField] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientTreatmentOutcome_RecurrenceInVOutField] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientTreatmentOutcome_RecurrenceInVOutField_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientTreatmentOutcome_RecurrenceInVOutField] ([PatientTreatmentOutcome_RecurrenceInVOutField], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Infield-PTV', 'O3_0060060_00001', 'NULL', 'NULL', 'NULL'),
  ('Infield-Nodal', 'O3_0060060_00002', 'NULL', 'NULL', 'NULL'),
  ('Infield-Central High Dose Failure', 'O3_0060060_00003', 'NULL', 'NULL', 'NULL'),
  ('Infield-Peripheral High Dose Failure', 'O3_0060060_00004', 'NULL', 'NULL', 'NULL'),
  ('Infield-Central Elective Dose Failure', 'O3_0060060_00005', 'NULL', 'NULL', 'NULL'),
  ('Infield-Extraneous Dose Failure', 'O3_0060060_00006', 'NULL', 'NULL', 'NULL'),
  ('Out of Field', 'O3_0060060_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientTreatmentOutcome.PatientTreatmentOutcome_RecurrenceInVOutField', 'PatientTreatmentOutcome_RecurrenceInVOutField_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ALTER COLUMN [PatientTreatmentOutcome_RecurrenceInVOutField_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientTreatmentOutcome]
ADD FOREIGN KEY ([PatientTreatmentOutcome_RecurrenceInVOutField_ID])
REFERENCES [dbo].[SVL_PatientTreatmentOutcome_RecurrenceInVOutField]([SVL_PatientTreatmentOutcome_RecurrenceInVOutField_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ProviderReportedToxicity_ToxictyCodingSystem] (
    [SVL_ProviderReportedToxicity_ToxictyCodingSystem_ID][int] IDENTITY(1,1) NOT NULL,
    [ProviderReportedToxicity_ToxictyCodingSystem] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ProviderReportedToxicity_ToxictyCodingSystem] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ProviderReportedToxicity_ToxictyCodingSystem_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ProviderReportedToxicity_ToxictyCodingSystem] ([ProviderReportedToxicity_ToxictyCodingSystem], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('CTCAE v5.0', 'O3_0070030_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ProviderReportedToxicity.ProviderReportedToxicity_ToxictyCodingSystem', 'ProviderReportedToxicity_ToxictyCodingSystem_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ProviderReportedToxicity]
ALTER COLUMN [ProviderReportedToxicity_ToxictyCodingSystem_ID] int NULL;
GO

ALTER TABLE [dbo].[ProviderReportedToxicity]
ADD FOREIGN KEY ([ProviderReportedToxicity_ToxictyCodingSystem_ID])
REFERENCES [dbo].[SVL_ProviderReportedToxicity_ToxictyCodingSystem]([SVL_ProviderReportedToxicity_ToxictyCodingSystem_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ProviderReportedToxicity_ToxicityMeasure] (
    [SVL_ProviderReportedToxicity_ToxicityMeasure_ID][int] IDENTITY(1,1) NOT NULL,
    [ProviderReportedToxicity_ToxicityMeasure] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ProviderReportedToxicity_ToxicityMeasure] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ProviderReportedToxicity_ToxicityMeasure_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ProviderReportedToxicity_ToxicityMeasure] ([ProviderReportedToxicity_ToxicityMeasure], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('No toxicity assessment', 'O3_0070040_00001', 'NULL', 'NULL', 'NULL'),
  ('Rectal Hemorrhage (Priority 1)', 'O3_0070040_00002', ' SCTID-', ' 12063002 NCITC- C56560', ' NCIMT-C1962965'),
  ('Urinary Incontinence (Priority 1)', 'O3_0070040_00003', ' SCTID- 165232002 ', 'NCITC- C146786 ', 'NULL'),
  ('Urinary Retention (Priority 1)', 'O3_0070040_00004', ' SCTID-267064002', 'NULL', 'NULL'),
  ('Erectile Disfunction (Priority 1)', 'O3_0070040_00005', ' SCTID-860914002', 'NULL', 'NULL'),
  ('Hematuria (Priority 1)', 'O3_0070040_00006', ' SCTID-34436003', 'NULL', 'NULL'),
  ('Dysuria (Priority 1)', 'O3_0070040_00007', 'NULL', 'NULL', 'NULL'),
  ('Rectal Fistula (Priority 1)', 'O3_0070040_00008', 'NULL', 'NULL', 'NULL'),
  ('Urinary Urgency (Priority 1)', 'O3_0070040_00009', 'NULL', 'NULL', 'NULL'),
  ('Urinary Frequency (Priority 1)', 'O3_0070040_00010', 'NULL', 'NULL', 'NULL'),
  ('Urinary Fistula (Priority 1)', 'O3_0070040_00011', 'NULL', 'NULL', 'NULL'),
  ('Proctitis (Priority 1)', 'O3_0070040_00012', 'NULL', 'NULL', 'NULL'),
  ('Fecal Incontinence (Priority 1)', 'O3_0070040_00013', 'NULL', 'NULL', 'NULL'),
  ('Rectal Perforation (Priority 1)', 'O3_0070040_00014', 'NULL', 'NULL', 'NULL'),
  ('Diarrhea (Priority 1)', 'O3_0070040_00015', 'NULL', 'NULL', 'NULL'),
  ('Rectal Ulcer (Priority 1)', 'O3_0070040_00016', 'NULL', 'NULL', 'NULL'),
  ('Urinary Tract Obstruction (Priority 2)', 'O3_0070040_00017', 'NULL', 'NULL', 'NULL'),
  ('Rectal Pain (Priority 2)', 'O3_0070040_00018', 'NULL', 'NULL', 'NULL'),
  ('Cystitis Noninfective (Priority 2)', 'O3_0070040_00019', 'NULL', 'NULL', 'NULL'),
  ('Urinary Tract Pain (Priority 2)', 'O3_0070040_00020', 'NULL', 'NULL', 'NULL'),
  ('Bladder Spasms (Priority 2)', 'O3_0070040_00021', 'NULL', 'NULL', 'NULL'),
  ('Hot flashes (Priority 2)', 'O3_0070040_00022', 'NULL', 'NULL', 'NULL'),
  ('Rectal Stenosis (Priority 2)', 'O3_0070040_00023', 'NULL', 'NULL', 'NULL'),
  ('Fatigue (Priority 2)', 'O3_0070040_00024', 'NULL', 'NULL', 'NULL'),
  ('Rectal Mucositis (Priority 2)', 'O3_0070040_00025', 'NULL', 'NULL', 'NULL'),
  ('Hemorrhoids (Priority 2)', 'O3_0070040_00026', 'NULL', 'NULL', 'NULL'),
  ('Rectal Fissure (Priority 2)', 'O3_0070040_00027', 'NULL', 'NULL', 'NULL'),
  ('Depression (Priority 2)', 'O3_0070040_00028', 'NULL', 'NULL', 'NULL'),
  ('Ejaculation Disorder (Priority 2)', 'O3_0070040_00029', 'NULL', 'NULL', 'NULL'),
  ('Libido Decrease (Priority 2)', 'O3_0070040_00030', 'NULL', 'NULL', 'NULL'),
  ('Gynecomastia (Priority 2)', 'O3_0070040_00031', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0070040_00032', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ProviderReportedToxicity.ProviderReportedToxicity_ToxicityMeasure', 'ProviderReportedToxicity_ToxicityMeasure_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ProviderReportedToxicity]
ALTER COLUMN [ProviderReportedToxicity_ToxicityMeasure_ID] int NULL;
GO

ALTER TABLE [dbo].[ProviderReportedToxicity]
ADD FOREIGN KEY ([ProviderReportedToxicity_ToxicityMeasure_ID])
REFERENCES [dbo].[SVL_ProviderReportedToxicity_ToxicityMeasure]([SVL_ProviderReportedToxicity_ToxicityMeasure_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ProviderReportedToxicity_ToxicityValue] (
    [SVL_ProviderReportedToxicity_ToxicityValue_ID][int] IDENTITY(1,1) NOT NULL,
    [ProviderReportedToxicity_ToxicityValue] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ProviderReportedToxicity_ToxicityValue] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ProviderReportedToxicity_ToxicityValue_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ProviderReportedToxicity_ToxicityValue] ([ProviderReportedToxicity_ToxicityValue], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('0', 'O3_0070050_00001', 'NULL', 'NULL', 'NULL'),
  ('1', 'O3_0070050_00002', 'NULL', 'NULL', 'NULL'),
  ('2', 'O3_0070050_00003', 'NULL', 'NULL', 'NULL'),
  ('3', 'O3_0070050_00004', 'NULL', 'NULL', 'NULL'),
  ('4', 'O3_0070050_00005', 'NULL', 'NULL', 'NULL'),
  ('5', 'O3_0070050_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ProviderReportedToxicity.ProviderReportedToxicity_ToxicityValue', 'ProviderReportedToxicity_ToxicityValue_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ProviderReportedToxicity]
ALTER COLUMN [ProviderReportedToxicity_ToxicityValue_ID] int NULL;
GO

ALTER TABLE [dbo].[ProviderReportedToxicity]
ADD FOREIGN KEY ([ProviderReportedToxicity_ToxicityValue_ID])
REFERENCES [dbo].[SVL_ProviderReportedToxicity_ToxicityValue]([SVL_ProviderReportedToxicity_ToxicityValue_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PRO_Instrument] (
    [SVL_PRO_Instrument_ID][int] IDENTITY(1,1) NOT NULL,
    [PRO_Instrument] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PRO_Instrument] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PRO_Instrument_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PRO_Instrument] ([PRO_Instrument], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('EPIC-26 (Priority 1)', 'O3_0080030_00001', ' SCTID-_', 'NCITC- C127367', 'NCIMT- CL508708'),
  ('EORTC QLQ-PR25', 'O3_0080030_00002', ' SCTID-_', 'NCITC- C183591', 'NULL'),
  ('EORTC', 'O3_0080030_00006', 'NULL', 'NULL', 'NULL'),
  ('FACT-P', 'O3_0080030_00003', ' SCTID-_', 'NCITC- C103832', 'NCIMT- C3641634'),
  ('PRO-CTCAE', 'O3_0080030_00004', ' SCTID-_', 'NCITC- C103843', 'NCIMT- C3641643'),
  ('MDASI-HN', 'O3_0080030_00007', 'NULL', 'NULL', 'NULL'),
  ('MDADI', 'O3_0080030_00008', 'NULL', 'NULL', 'NULL'),
  ('EQ5D', 'O3_0080030_00009', 'NULL', 'NULL', 'NULL'),
  ('FACT-HN', 'O3_0080030_00010', 'NULL', 'NULL', 'NULL'),
  ('XQ', 'O3_0080030_00011', 'NULL', 'NULL', 'NULL'),
  ('EORTC HN35', 'O3_0080030_00012', 'NULL', 'NULL', 'NULL'),
  ('HEART (aligns to ASTRO Health Policy recommendations)', 'O3_0080030_00005', ' SCTID-_', 'NCITC-_', 'NCIMT-_');
GO

EXEC sp_rename 'dbo.PRO.PRO_Instrument', 'PRO_Instrument_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PRO]
ALTER COLUMN [PRO_Instrument_ID] int NULL;
GO

ALTER TABLE [dbo].[PRO]
ADD FOREIGN KEY ([PRO_Instrument_ID])
REFERENCES [dbo].[SVL_PRO_Instrument]([SVL_PRO_Instrument_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PerformanceScore_System] (
    [SVL_PerformanceScore_System_ID][int] IDENTITY(1,1) NOT NULL,
    [PerformanceScore_System] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PerformanceScore_System] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PerformanceScore_System_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PerformanceScore_System] ([PerformanceScore_System], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Karnofsky', 'O3_0090030_00001', ' SCTID-273546003', 'NCITC- C28013', ' NCIMT- C0206065'),
  ('ECOG', 'O3_0090030_00002', ' SCTID-423740007', ' NCITC- C105721', 'NCIMT- C3541269');
GO

EXEC sp_rename 'dbo.PerformanceScore.PerformanceScore_System', 'PerformanceScore_System_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PerformanceScore]
ALTER COLUMN [PerformanceScore_System_ID] int NULL;
GO

ALTER TABLE [dbo].[PerformanceScore]
ADD FOREIGN KEY ([PerformanceScore_System_ID])
REFERENCES [dbo].[SVL_PerformanceScore_System]([SVL_PerformanceScore_System_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTCourse_Objective] (
    [SVL_RTCourse_Objective_ID][int] IDENTITY(1,1) NOT NULL,
    [RTCourse_Objective] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTCourse_Objective] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTCourse_Objective_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTCourse_Objective] ([RTCourse_Objective], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Definitive', 'O3_0100080_00001', ' SCTID-373808002', ' NCITC- C160612', 'NCIMT-CL971169'),
  ('Palliative', 'O3_0100080_00002', ' SCTID-363676003', ' NCITC- C15292', 'NCIMT-C0030231'),
  ('Supportive', 'O3_0100080_00003', ' SCTID-399707004', 'NCITC- C15747', 'NCIMT-C0344211');
GO

EXEC sp_rename 'dbo.RTCourse.RTCourse_Objective', 'RTCourse_Objective_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTCourse]
ALTER COLUMN [RTCourse_Objective_ID] int NULL;
GO

ALTER TABLE [dbo].[RTCourse]
ADD FOREIGN KEY ([RTCourse_Objective_ID])
REFERENCES [dbo].[SVL_RTCourse_Objective]([SVL_RTCourse_Objective_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTCourse_ResidenceDuringTreatment] (
    [SVL_RTCourse_ResidenceDuringTreatment_ID][int] IDENTITY(1,1) NOT NULL,
    [RTCourse_ResidenceDuringTreatment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTCourse_ResidenceDuringTreatment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTCourse_ResidenceDuringTreatment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTCourse_ResidenceDuringTreatment] ([RTCourse_ResidenceDuringTreatment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Primary Residence', 'O3_0100120_00001', 'NULL', 'NULL', 'NULL'),
  ('Other Location', 'O3_0100120_00002', 'NULL', 'NULL', 'NULL'),
  ('Other Location Subsidized', 'O3_0100120_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTCourse.RTCourse_ResidenceDuringTreatment', 'RTCourse_ResidenceDuringTreatment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTCourse]
ALTER COLUMN [RTCourse_ResidenceDuringTreatment_ID] int NULL;
GO

ALTER TABLE [dbo].[RTCourse]
ADD FOREIGN KEY ([RTCourse_ResidenceDuringTreatment_ID])
REFERENCES [dbo].[SVL_RTCourse_ResidenceDuringTreatment]([SVL_RTCourse_ResidenceDuringTreatment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTCourse_DistanceToPatientPrimaryResidenceDirectMethod] (
    [SVL_RTCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [RTCourse_DistanceToPatientPrimaryResidenceDirectMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTCourse_DistanceToPatientPrimaryResidenceDirectMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTCourse_DistanceToPatientPrimaryResidenceDirectMethod] ([RTCourse_DistanceToPatientPrimaryResidenceDirectMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Country', 'O3_0100150_00001', 'NULL', 'NULL', 'NULL'),
  ('State', 'O3_0100150_00002', 'NULL', 'NULL', 'NULL'),
  ('Province', 'O3_0100150_00003', 'NULL', 'NULL', 'NULL'),
  ('County', 'O3_0100150_00004', 'NULL', 'NULL', 'NULL'),
  ('City', 'O3_0100150_00005', 'NULL', 'NULL', 'NULL'),
  ('Postal Code', 'O3_0100150_00006', 'NULL', 'NULL', 'NULL'),
  ('Address', 'O3_0100150_00007', 'NULL', 'NULL', 'NULL'),
  ('GPS', 'O3_0100150_00008', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0100150_00009', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTCourse.RTCourse_DistanceToPatientPrimaryResidenceDirectMethod', 'RTCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTCourse]
ALTER COLUMN [RTCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[RTCourse]
ADD FOREIGN KEY ([RTCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID])
REFERENCES [dbo].[SVL_RTCourse_DistanceToPatientPrimaryResidenceDirectMethod]([SVL_RTCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTCourse_DistanceToPatientDomicileDirectUnits] (
    [SVL_RTCourse_DistanceToPatientDomicileDirectUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [RTCourse_DistanceToPatientDomicileDirectUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTCourse_DistanceToPatientDomicileDirectUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTCourse_DistanceToPatientDomicileDirectUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTCourse_DistanceToPatientDomicileDirectUnits] ([RTCourse_DistanceToPatientDomicileDirectUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0100160_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0100160_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTCourse.RTCourse_DistanceToPatientDomicileDirectUnits', 'RTCourse_DistanceToPatientDomicileDirectUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTCourse]
ALTER COLUMN [RTCourse_DistanceToPatientDomicileDirectUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[RTCourse]
ADD FOREIGN KEY ([RTCourse_DistanceToPatientDomicileDirectUnits_ID])
REFERENCES [dbo].[SVL_RTCourse_DistanceToPatientDomicileDirectUnits]([SVL_RTCourse_DistanceToPatientDomicileDirectUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits] (
    [SVL_RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits] ([RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0100190_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0100190_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTCourse.RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits', 'RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTCourse]
ALTER COLUMN [RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[RTCourse]
ADD FOREIGN KEY ([RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
REFERENCES [dbo].[SVL_RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits]([SVL_RTCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTCourseTargetDose_DoseUnit] (
    [SVL_RTCourseTargetDose_DoseUnit_ID][int] IDENTITY(1,1) NOT NULL,
    [RTCourseTargetDose_DoseUnit] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTCourseTargetDose_DoseUnit] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTCourseTargetDose_DoseUnit_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTCourseTargetDose_DoseUnit] ([RTCourseTargetDose_DoseUnit], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('cGy', 'O3_0110030_00001', 'NULL', 'NULL', 'NULL'),
  ('Gy', 'O3_0110030_00002', 'NULL', 'NULL', 'NULL'),
  ('CGE', 'O3_0110030_00003', 'NULL', 'NULL', 'NULL'),
  ('RBE', 'O3_0110030_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTCourseTargetDose.RTCourseTargetDose_DoseUnit', 'RTCourseTargetDose_DoseUnit_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTCourseTargetDose]
ALTER COLUMN [RTCourseTargetDose_DoseUnit_ID] int NULL;
GO

ALTER TABLE [dbo].[RTCourseTargetDose]
ADD FOREIGN KEY ([RTCourseTargetDose_DoseUnit_ID])
REFERENCES [dbo].[SVL_RTCourseTargetDose_DoseUnit]([SVL_RTCourseTargetDose_DoseUnit_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTCourseEvent_Type] (
    [SVL_RTCourseEvent_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [RTCourseEvent_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTCourseEvent_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTCourseEvent_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTCourseEvent_Type] ([RTCourseEvent_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Refusal of treatment by patient', 'O3_0120030_00001', ' SCTID-105480006', 'NULL', 'NULL'),
  ('Financial Problem', 'O3_0120030_00002', ' SCTID-16093205', 'NULL', 'NULL'),
  ('Treatment Started', 'O3_0120030_00017', 'NULL', 'NULL', 'NULL'),
  ('Treatment Completed', 'O3_0120030_00003', ' SCTID-182992009', 'NULL', 'NULL'),
  ('Patient Has Moved Away', 'O3_0120030_00004', ' SCTID-184081006', 'NULL', 'NULL'),
  ('No Response To Treatment', 'O3_0120030_00005', ' SCTID-266721009', 'NULL', 'NULL'),
  ('Treatment Not Available', 'O3_0120030_00006', ' SCTID-309846006', 'NULL', 'NULL'),
  ('Lost to Follow-up', 'O3_0120030_00007', ' SCTID-399307001', 'NULL', 'NULL'),
  ('Treatment Not Tolerated', 'O3_0120030_00008', ' SCTID-407563006', 'NULL', 'NULL'),
  ('Radiotherapy course changed due to toxicity(Request SNOMED Code)', 'O3_0120030_00009', 'NULL', 'NULL', 'NULL'),
  ('Treatment Break Due to Toxicity (Request SNOMED Code)', 'O3_0120030_00010', 'NULL', 'NULL', 'NULL'),
  ('Treatment Break Due to Patient Non-Toxicity (Request SNOMED Code)', 'O3_0120030_00011', 'NULL', 'NULL', 'NULL'),
  ('Treatment Missed-Patient lacking transportation', 'O3_0120030_00012', 'NULL', 'NULL', 'NULL'),
  ('Treatment Missed -Patient cannot secure time away from work', 'O3_0120030_00013', 'NULL', 'NULL', 'NULL'),
  ('Treatment Missed- Patient cannot secure dependent care', 'O3_0120030_00014', 'NULL', 'NULL', 'NULL'),
  ('Patient Died During Course (Request SNOMED Code)', 'O3_0120030_00015', 'NULL', 'NULL', 'NULL'),
  ('Patient Transferred to Different Institution', 'O3_0120030_00016', ' SCTID-107724000', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTCourseEvent.RTCourseEvent_Type', 'RTCourseEvent_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTCourseEvent]
ALTER COLUMN [RTCourseEvent_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[RTCourseEvent]
ADD FOREIGN KEY ([RTCourseEvent_Type_ID])
REFERENCES [dbo].[SVL_RTCourseEvent_Type]([SVL_RTCourseEvent_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPhase_Technique] (
    [SVL_RTPhase_Technique_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPhase_Technique] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPhase_Technique] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPhase_Technique_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPhase_Technique] ([RTPhase_Technique], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('IMRT', 'O3_0140040_00001', 'NULL', 'NULL', 'NULL'),
  ('VMAT', 'O3_0140040_00002', 'NULL', 'NULL', 'NULL'),
  ('3D', 'O3_0140040_00003', 'NULL', 'NULL', 'NULL'),
  ('2D', 'O3_0140040_00004', 'NULL', 'NULL', 'NULL'),
  ('IORT', 'O3_0140040_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPhase.RTPhase_Technique', 'RTPhase_Technique_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPhase]
ALTER COLUMN [RTPhase_Technique_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPhase]
ADD FOREIGN KEY ([RTPhase_Technique_ID])
REFERENCES [dbo].[SVL_RTPhase_Technique]([SVL_RTPhase_Technique_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPhase_Modality] (
    [SVL_RTPhase_Modality_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPhase_Modality] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPhase_Modality] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPhase_Modality_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPhase_Modality] ([RTPhase_Modality], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Photon', 'O3_0140050_00001', ' SCTID- 290006006 ', 'NULL', ' NCIMT- C0086805'),
  ('Electron', 'O3_0140050_00002', ' SCTID- 46602004', ' NCITC- C40428', ' NCIMT- C0013852'),
  ('Proton', 'O3_0140050_00003', ' SCTID- 82371002', ' NCITC- C88112 ', ' NCIMT- C0729603'),
  ('Carbon', 'O3_0140050_00004', 'NULL', ' NCITC- C63798', ' NCIMT- C0007009'),
  ('Neutron', 'O3_0140050_00005', 'NULL', 'NULL', 'NULL'),
  ('LDR-PERM', 'O3_0140050_00006', 'NULL', 'NULL', 'NULL'),
  ('LDR-TEMP', 'O3_0140050_00007', 'NULL', 'NULL', 'NULL'),
  ('PDR', 'O3_0140050_00008', 'NULL', 'NULL', 'NULL'),
  ('HDR', 'O3_0140050_00009', 'NULL', 'NULL', 'NULL'),
  ('EBRACHY', 'O3_0140050_00010', 'NULL', 'NULL', 'NULL'),
  ('RADPHARM', 'O3_0140050_00011', ' SCTID- 399124002', ' NCITC- C0349388', 'NULL');
GO

EXEC sp_rename 'dbo.RTPhase.RTPhase_Modality', 'RTPhase_Modality_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPhase]
ALTER COLUMN [RTPhase_Modality_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPhase]
ADD FOREIGN KEY ([RTPhase_Modality_ID])
REFERENCES [dbo].[SVL_RTPhase_Modality]([SVL_RTPhase_Modality_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPhaseTarget_DoseUnit] (
    [SVL_RTPhaseTarget_DoseUnit_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPhaseTarget_DoseUnit] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPhaseTarget_DoseUnit] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPhaseTarget_DoseUnit_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPhaseTarget_DoseUnit] ([RTPhaseTarget_DoseUnit], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('cGy', 'O3_0150030_00001', 'NULL', 'NULL', 'NULL'),
  ('Gy', 'O3_0150030_00002', 'NULL', 'NULL', 'NULL'),
  ('CGE', 'O3_0150030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPhaseTargetDose.RTPhaseTarget_DoseUnit', 'RTPhaseTarget_DoseUnit_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPhaseTargetDose]
ALTER COLUMN [RTPhaseTarget_DoseUnit_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPhaseTargetDose]
ADD FOREIGN KEY ([RTPhaseTarget_DoseUnit_ID])
REFERENCES [dbo].[SVL_RTPhaseTarget_DoseUnit]([SVL_RTPhaseTarget_DoseUnit_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPrescriptionTargetDose_DoseUnit] (
    [SVL_RTPrescriptionTargetDose_DoseUnit_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPrescriptionTargetDose_DoseUnit] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPrescriptionTargetDose_DoseUnit] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPrescriptionTargetDose_DoseUnit_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPrescriptionTargetDose_DoseUnit] ([RTPrescriptionTargetDose_DoseUnit], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('cGy', 'O3_0170030_00001', 'NULL', 'NULL', 'NULL'),
  ('Gy', 'O3_0170030_00002', 'NULL', 'NULL', 'NULL'),
  ('CGE', 'O3_0170030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPrescriptionTargetDose.RTPrescriptionTargetDose_DoseUnit', 'RTPrescriptionTargetDose_DoseUnit_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPrescriptionTargetDose]
ALTER COLUMN [RTPrescriptionTargetDose_DoseUnit_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPrescriptionTargetDose]
ADD FOREIGN KEY ([RTPrescriptionTargetDose_DoseUnit_ID])
REFERENCES [dbo].[SVL_RTPrescriptionTargetDose_DoseUnit]([SVL_RTPrescriptionTargetDose_DoseUnit_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPrescriptionDoseObjective_StructureType] (
    [SVL_RTPrescriptionDoseObjective_StructureType_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPrescriptionDoseObjective_StructureType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPrescriptionDoseObjective_StructureType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPrescriptionDoseObjective_StructureType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPrescriptionDoseObjective_StructureType] ([RTPrescriptionDoseObjective_StructureType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Target', 'O3_0180010_00001', 'NULL', 'NULL', 'NULL'),
  ('Organ at Risk', 'O3_0180010_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPrescriptionDoseObjective.RTPrescriptionDoseObjective_StructureType', 'RTPrescriptionDoseObjective_StructureType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPrescriptionDoseObjective]
ALTER COLUMN [RTPrescriptionDoseObjective_StructureType_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPrescriptionDoseObjective]
ADD FOREIGN KEY ([RTPrescriptionDoseObjective_StructureType_ID])
REFERENCES [dbo].[SVL_RTPrescriptionDoseObjective_StructureType]([SVL_RTPrescriptionDoseObjective_StructureType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPrescriptionDoseObjective_Priority] (
    [SVL_RTPrescriptionDoseObjective_Priority_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPrescriptionDoseObjective_Priority] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPrescriptionDoseObjective_Priority] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPrescriptionDoseObjective_Priority_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPrescriptionDoseObjective_Priority] ([RTPrescriptionDoseObjective_Priority], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Required (1)', 'O3_0180040_00001', 'NULL', 'NULL', 'NULL'),
  ('Highly Desirable (2)', 'O3_0180040_00002', 'NULL', 'NULL', 'NULL'),
  ('Desirable (3)', 'O3_0180040_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPrescriptionDoseObjective.RTPrescriptionDoseObjective_Priority', 'RTPrescriptionDoseObjective_Priority_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPrescriptionDoseObjective]
ALTER COLUMN [RTPrescriptionDoseObjective_Priority_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPrescriptionDoseObjective]
ADD FOREIGN KEY ([RTPrescriptionDoseObjective_Priority_ID])
REFERENCES [dbo].[SVL_RTPrescriptionDoseObjective_Priority]([SVL_RTPrescriptionDoseObjective_Priority_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPrescriptionDoseObjective_Condition] (
    [SVL_RTPrescriptionDoseObjective_Condition_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPrescriptionDoseObjective_Condition] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPrescriptionDoseObjective_Condition] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPrescriptionDoseObjective_Condition_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPrescriptionDoseObjective_Condition] ([RTPrescriptionDoseObjective_Condition], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('=', 'O3_0180060_00001', 'NULL', 'NULL', 'NULL'),
  ('<', 'O3_0180060_00002', 'NULL', 'NULL', 'NULL'),
  ('<=', 'O3_0180060_00003', 'NULL', 'NULL', 'NULL'),
  ('>', 'O3_0180060_00004', 'NULL', 'NULL', 'NULL'),
  ('>=', 'O3_0180060_00005', 'NULL', 'NULL', 'NULL'),
  ('ALARA', 'O3_0180060_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPrescriptionDoseObjective.RTPrescriptionDoseObjective_Condition', 'RTPrescriptionDoseObjective_Condition_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPrescriptionDoseObjective]
ALTER COLUMN [RTPrescriptionDoseObjective_Condition_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPrescriptionDoseObjective]
ADD FOREIGN KEY ([RTPrescriptionDoseObjective_Condition_ID])
REFERENCES [dbo].[SVL_RTPrescriptionDoseObjective_Condition]([SVL_RTPrescriptionDoseObjective_Condition_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_TreatmentPlanningGeneration] (
    [SVL_RTTreatedPlan_TreatmentPlanningGeneration_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_TreatmentPlanningGeneration] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_TreatmentPlanningGeneration] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_TreatmentPlanningGeneration_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_TreatmentPlanningGeneration] ([RTTreatedPlan_TreatmentPlanningGeneration], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Manual', 'O3_0190060_00001', ' SCTID- 87982008', ' NCITC- C63513', ' NCIMT- C0175674'),
  ('Automatic', 'O3_0190060_00002', ' SCTID- 8359006', ' NCITC- C70669', ' NCIMT- C0205554'),
  ('Automated-Commercial System', 'O3_0190060_00003', 'NULL', 'NULL', 'NULL'),
  ('Automated-In-house System', 'O3_0190060_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_TreatmentPlanningGeneration', 'RTTreatedPlan_TreatmentPlanningGeneration_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_TreatmentPlanningGeneration_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_TreatmentPlanningGeneration_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_TreatmentPlanningGeneration]([SVL_RTTreatedPlan_TreatmentPlanningGeneration_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_AdaptationOrRevision] (
    [SVL_RTTreatedPlan_AdaptationOrRevision_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_AdaptationOrRevision] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_AdaptationOrRevision] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_AdaptationOrRevision_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_AdaptationOrRevision] ([RTTreatedPlan_AdaptationOrRevision], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Intra-fraction adaptation', 'O3_0190090_00001', 'NULL', 'NULL', 'NULL'),
  ('Inter-fraction adaptation', 'O3_0190090_00002', 'NULL', 'NULL', 'NULL'),
  ('Revision', 'O3_0190090_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_AdaptationOrRevision', 'RTTreatedPlan_AdaptationOrRevision_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_AdaptationOrRevision_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_AdaptationOrRevision_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_AdaptationOrRevision]([SVL_RTTreatedPlan_AdaptationOrRevision_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_Modality] (
    [SVL_RTTreatedPlan_Modality_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_Modality] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_Modality] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_Modality_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_Modality] ([RTTreatedPlan_Modality], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Photon', 'O3_0190110_00001', ' SCTID- 290006006 ', 'NULL', ' NCIMT- C0086805'),
  ('Electron', 'O3_0190110_00002', ' SCTID- 46602004', ' NCITC- C40428', ' NCIMT- C0013852'),
  ('Proton', 'O3_0190110_00003', ' SCTID- 82371002', ' NCITC- C88112 ', ' NCIMT- C0729603'),
  ('Carbon', 'O3_0190110_00004', 'NULL', ' NCITC- C63798', ' NCIMT- C0007009'),
  ('Neutron', 'O3_0190110_00005', 'NULL', 'NULL', 'NULL'),
  ('LDR-PERM', 'O3_0190110_00006', 'NULL', 'NULL', 'NULL'),
  ('LDR-TEMP', 'O3_0190110_00007', 'NULL', 'NULL', 'NULL'),
  ('PDR', 'O3_0190110_00008', 'NULL', 'NULL', 'NULL'),
  ('HDR', 'O3_0190110_00009', 'NULL', 'NULL', 'NULL'),
  ('EBRACHY', 'O3_0190110_00010', 'NULL', 'NULL', 'NULL'),
  ('RADPHARM', 'O3_0190110_00011', ' SCTID- 399124002', ' NCITC- C0349388', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_Modality', 'RTTreatedPlan_Modality_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_Modality_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_Modality_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_Modality]([SVL_RTTreatedPlan_Modality_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_DoseExpressedToMaterial] (
    [SVL_RTTreatedPlan_DoseExpressedToMaterial_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_DoseExpressedToMaterial] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_DoseExpressedToMaterial] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_DoseExpressedToMaterial_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_DoseExpressedToMaterial] ([RTTreatedPlan_DoseExpressedToMaterial], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Water', 'O3_0190120_00001', 'NULL', 'NULL', 'NULL'),
  ('Muscle', 'O3_0190120_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_DoseExpressedToMaterial', 'RTTreatedPlan_DoseExpressedToMaterial_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_DoseExpressedToMaterial_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_DoseExpressedToMaterial_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_DoseExpressedToMaterial]([SVL_RTTreatedPlan_DoseExpressedToMaterial_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_DoseDeliveryCategory] (
    [SVL_RTTreatedPlan_DoseDeliveryCategory_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_DoseDeliveryCategory] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_DoseDeliveryCategory] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_DoseDeliveryCategory_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_DoseDeliveryCategory] ([RTTreatedPlan_DoseDeliveryCategory], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Conventional', 'O3_0190130_00001', 'NULL', 'NULL', 'NULL'),
  ('Hypofractionation', 'O3_0190130_00002', 'NULL', 'NULL', 'NULL'),
  ('Moderately Hypofractionated', 'O3_0190130_00003', 'NULL', 'NULL', 'NULL'),
  ('Ultrahypofractionated', 'O3_0190130_00004', 'NULL', 'NULL', 'NULL'),
  ('SBRT', 'O3_0190130_00005', 'NULL', 'NULL', 'NULL'),
  ('SRS', 'O3_0190130_00006', 'NULL', 'NULL', 'NULL'),
  ('IORT', 'O3_0190130_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_DoseDeliveryCategory', 'RTTreatedPlan_DoseDeliveryCategory_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_DoseDeliveryCategory_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_DoseDeliveryCategory_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_DoseDeliveryCategory]([SVL_RTTreatedPlan_DoseDeliveryCategory_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_PlanSumRegistrationMethod] (
    [SVL_RTTreatedPlan_PlanSumRegistrationMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_PlanSumRegistrationMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_PlanSumRegistrationMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_PlanSumRegistrationMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_PlanSumRegistrationMethod] ([RTTreatedPlan_PlanSumRegistrationMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Rigid', 'O3_0190190_00001', 'NULL', 'NULL', 'NULL'),
  ('Deformable', 'O3_0190190_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_PlanSumRegistrationMethod', 'RTTreatedPlan_PlanSumRegistrationMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_PlanSumRegistrationMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_PlanSumRegistrationMethod_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_PlanSumRegistrationMethod]([SVL_RTTreatedPlan_PlanSumRegistrationMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_PlanSumRegistrationBasis] (
    [SVL_RTTreatedPlan_PlanSumRegistrationBasis_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_PlanSumRegistrationBasis] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_PlanSumRegistrationBasis] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_PlanSumRegistrationBasis_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_PlanSumRegistrationBasis] ([RTTreatedPlan_PlanSumRegistrationBasis], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Planned Doses', 'O3_0190200_00001', 'NULL', 'NULL', 'NULL'),
  ('Accumulated Dose (i.e. Dose Calculated from CBCT at Delivery )', 'O3_0190200_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_PlanSumRegistrationBasis', 'RTTreatedPlan_PlanSumRegistrationBasis_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_PlanSumRegistrationBasis_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_PlanSumRegistrationBasis_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_PlanSumRegistrationBasis]([SVL_RTTreatedPlan_PlanSumRegistrationBasis_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_ImageGuidance] (
    [SVL_RTTreatedPlan_ImageGuidance_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_ImageGuidance] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_ImageGuidance] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_ImageGuidance_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_ImageGuidance] ([RTTreatedPlan_ImageGuidance], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0190210_00001', 'NULL', 'NULL', 'NULL'),
  ('kV - radiograph', 'O3_0190210_00002', 'NULL', 'NULL', 'NULL'),
  ('kV - fluorograph', 'O3_0190210_00003', 'NULL', 'NULL', 'NULL'),
  ('MV - radiograph', 'O3_0190210_00004', 'NULL', 'NULL', 'NULL'),
  ('CT - kV', 'O3_0190210_00005', 'NULL', 'NULL', 'NULL'),
  ('CT - MV', 'O3_0190210_00006', 'NULL', 'NULL', 'NULL'),
  ('Conebeam CT - kV', 'O3_0190210_00007', 'NULL', 'NULL', 'NULL'),
  ('Conebeam CT - MV', 'O3_0190210_00008', 'NULL', 'NULL', 'NULL'),
  ('CT On Rails', 'O3_0190210_00009', 'NULL', 'NULL', 'NULL'),
  ('MR', 'O3_0190210_00010', 'NULL', 'NULL', 'NULL'),
  ('Ultrasound', 'O3_0190210_00011', 'NULL', 'NULL', 'NULL'),
  ('Optical Monitoring System', 'O3_0190210_00012', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_ImageGuidance', 'RTTreatedPlan_ImageGuidance_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_ImageGuidance_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_ImageGuidance_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_ImageGuidance]([SVL_RTTreatedPlan_ImageGuidance_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_PatientPosition] (
    [SVL_RTTreatedPlan_PatientPosition_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_PatientPosition] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_PatientPosition] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_PatientPosition_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_PatientPosition] ([RTTreatedPlan_PatientPosition], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Supine', 'O3_0190220_00001', 'NULL', 'NULL', 'NULL'),
  ('Prone', 'O3_0190220_00002', 'NULL', 'NULL', 'NULL'),
  ('Inclined', 'O3_0190220_00003', 'NULL', 'NULL', 'NULL'),
  ('Decubitus', 'O3_0190220_00004', 'NULL', 'NULL', 'NULL'),
  ('Standing', 'O3_0190220_00005', 'NULL', 'NULL', 'NULL'),
  ('Sitting', 'O3_0190220_00006', 'NULL', 'NULL', 'NULL'),
  ('Knee-chest', 'O3_0190220_00007', 'NULL', 'NULL', 'NULL'),
  ('Dorsal recumbent', 'O3_0190220_00008', 'NULL', 'NULL', 'NULL'),
  ('Squatting', 'O3_0190220_00009', 'NULL', 'NULL', 'NULL'),
  ('Lithotomy', 'O3_0190220_00010', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_PatientPosition', 'RTTreatedPlan_PatientPosition_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_PatientPosition_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_PatientPosition_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_PatientPosition]([SVL_RTTreatedPlan_PatientPosition_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_UsedFiducialsInIGRT] (
    [SVL_RTTreatedPlan_UsedFiducialsInIGRT_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_UsedFiducialsInIGRT] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_UsedFiducialsInIGRT] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_UsedFiducialsInIGRT_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_UsedFiducialsInIGRT] ([RTTreatedPlan_UsedFiducialsInIGRT], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Boolean', 'O3_0190230_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_UsedFiducialsInIGRT', 'RTTreatedPlan_UsedFiducialsInIGRT_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_UsedFiducialsInIGRT_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_UsedFiducialsInIGRT_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_UsedFiducialsInIGRT]([SVL_RTTreatedPlan_UsedFiducialsInIGRT_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_FiducialMarkerType] (
    [SVL_RTTreatedPlan_FiducialMarkerType_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_FiducialMarkerType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_FiducialMarkerType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_FiducialMarkerType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_FiducialMarkerType] ([RTTreatedPlan_FiducialMarkerType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0190240_00001', 'NULL', 'NULL', 'NULL'),
  ('Gold Seed', 'O3_0190240_00002', 'NULL', 'NULL', 'NULL'),
  ('Radiofrequency', 'O3_0190240_00003', ' SCTID- 469172007 ', 'NULL', 'NULL'),
  ('Carbon Seed', 'O3_0190240_00004', 'NULL', 'NULL', 'NULL'),
  ('Stents', 'O3_0190240_00005', 'NULL', 'NULL', 'NULL'),
  ('Surgical Clips', 'O3_0190240_00006', 'NULL', 'NULL', 'NULL'),
  ('Coil', 'O3_0190240_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_FiducialMarkerType', 'RTTreatedPlan_FiducialMarkerType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_FiducialMarkerType_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_FiducialMarkerType_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_FiducialMarkerType]([SVL_RTTreatedPlan_FiducialMarkerType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_FrequencyOfPlanAssessment] (
    [SVL_RTTreatedPlan_FrequencyOfPlanAssessment_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_FrequencyOfPlanAssessment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_FrequencyOfPlanAssessment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_FrequencyOfPlanAssessment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_FrequencyOfPlanAssessment] ([RTTreatedPlan_FrequencyOfPlanAssessment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Once', 'O3_0190280_00001', 'NULL', 'NULL', 'NULL'),
  ('Weekly', 'O3_0190280_00002', 'NULL', 'NULL', 'NULL'),
  ('Biweekly', 'O3_0190280_00003', 'NULL', 'NULL', 'NULL'),
  ('Per Session', 'O3_0190280_00004', 'NULL', 'NULL', 'NULL'),
  ('Per Session - Before Plan Delivery', 'O3_0190280_00005', 'NULL', 'NULL', 'NULL'),
  ('Per Session - After Plan Delivery', 'O3_0190280_00006', 'NULL', 'NULL', 'NULL'),
  ('Per Session - Midpoint of Plan Delivery', 'O3_0190280_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_FrequencyOfPlanAssessment', 'RTTreatedPlan_FrequencyOfPlanAssessment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_FrequencyOfPlanAssessment_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_FrequencyOfPlanAssessment_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_FrequencyOfPlanAssessment]([SVL_RTTreatedPlan_FrequencyOfPlanAssessment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_IntrafractionVerificationCategory] (
    [SVL_RTTreatedPlan_IntrafractionVerificationCategory_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_IntrafractionVerificationCategory] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_IntrafractionVerificationCategory] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_IntrafractionVerificationCategory_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_IntrafractionVerificationCategory] ([RTTreatedPlan_IntrafractionVerificationCategory], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Points or fiducials', 'O3_0190330_00001', 'NULL', 'NULL', 'NULL'),
  ('Projection', 'O3_0190330_00002', 'NULL', 'NULL', 'NULL'),
  ('Surface', 'O3_0190330_00003', 'NULL', 'NULL', 'NULL'),
  ('Volumetric Anatomic', 'O3_0190330_00004', 'NULL', 'NULL', 'NULL'),
  ('Volumetric Biological', 'O3_0190330_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_IntrafractionVerificationCategory', 'RTTreatedPlan_IntrafractionVerificationCategory_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_IntrafractionVerificationCategory_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_IntrafractionVerificationCategory_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_IntrafractionVerificationCategory]([SVL_RTTreatedPlan_IntrafractionVerificationCategory_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_IntrafractionVerificationModality] (
    [SVL_RTTreatedPlan_IntrafractionVerificationModality_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_IntrafractionVerificationModality] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_IntrafractionVerificationModality] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_IntrafractionVerificationModality_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_IntrafractionVerificationModality] ([RTTreatedPlan_IntrafractionVerificationModality], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Radiofrequency', 'O3_0190340_00001', 'NULL', 'NULL', 'NULL'),
  ('Ultrasound', 'O3_0190340_00002', 'NULL', 'NULL', 'NULL'),
  ('Orthogonal X Rays', 'O3_0190340_00003', 'NULL', 'NULL', 'NULL'),
  ('Single field X Rays', 'O3_0190340_00004', 'NULL', 'NULL', 'NULL'),
  ('Computed Tomography', 'O3_0190340_00005', 'NULL', 'NULL', 'NULL'),
  ('Optical', 'O3_0190340_00006', 'NULL', 'NULL', 'NULL'),
  ('Thermal', 'O3_0190340_00007', 'NULL', 'NULL', 'NULL'),
  ('MRI', 'O3_0190340_00008', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_IntrafractionVerificationModality', 'RTTreatedPlan_IntrafractionVerificationModality_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_IntrafractionVerificationModality_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_IntrafractionVerificationModality_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_IntrafractionVerificationModality]([SVL_RTTreatedPlan_IntrafractionVerificationModality_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_IntrafractionTreatmentModulation] (
    [SVL_RTTreatedPlan_IntrafractionTreatmentModulation_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_IntrafractionTreatmentModulation] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_IntrafractionTreatmentModulation] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_IntrafractionTreatmentModulation_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_IntrafractionTreatmentModulation] ([RTTreatedPlan_IntrafractionTreatmentModulation], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Gating', 'O3_0190300_00001', 'NULL', 'NULL', 'NULL'),
  ('MLC Tracking', 'O3_0190300_00002', 'NULL', 'NULL', 'NULL'),
  ('Gantry Tracking', 'O3_0190300_00003', 'NULL', 'NULL', 'NULL'),
  ('None', 'O3_0190300_00004', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0190300_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_IntrafractionTreatmentModulation', 'RTTreatedPlan_IntrafractionTreatmentModulation_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_IntrafractionTreatmentModulation_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_IntrafractionTreatmentModulation_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_IntrafractionTreatmentModulation]([SVL_RTTreatedPlan_IntrafractionTreatmentModulation_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_BreathControlMethod] (
    [SVL_RTTreatedPlan_BreathControlMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_BreathControlMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_BreathControlMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_BreathControlMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_BreathControlMethod] ([RTTreatedPlan_BreathControlMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0190320_00001', 'NULL', 'NULL', 'NULL'),
  ('Active Breath Control', 'O3_0190320_00002', 'NULL', 'NULL', 'NULL'),
  ('SDX', 'O3_0190320_00003', 'NULL', 'NULL', 'NULL'),
  ('Compression', 'O3_0190320_00004', 'NULL', 'NULL', 'NULL'),
  ('Voluntary Breath Hold', 'O3_0190320_00005', 'NULL', 'NULL', 'NULL'),
  ('Gating', 'O3_0190320_00006', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0190320_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_BreathControlMethod', 'RTTreatedPlan_BreathControlMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_BreathControlMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_BreathControlMethod_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_BreathControlMethod]([SVL_RTTreatedPlan_BreathControlMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_TypeOfPatientPositioningDevice] (
    [SVL_RTTreatedPlan_TypeOfPatientPositioningDevice_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_TypeOfPatientPositioningDevice] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_TypeOfPatientPositioningDevice] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_TypeOfPatientPositioningDevice_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_TypeOfPatientPositioningDevice] ([RTTreatedPlan_TypeOfPatientPositioningDevice], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0190350_00001', 'NULL', 'NULL', 'NULL'),
  ('Mask Regular Thickness', 'O3_0190350_00002', 'NULL', 'NULL', 'NULL'),
  ('Mask Reinforced Thickness', 'O3_0190350_00003', 'NULL', 'NULL', 'NULL'),
  ('Bite Block', 'O3_0190350_00004', 'NULL', 'NULL', 'NULL'),
  ('Mask Includes Shoulders', 'O3_0190350_00005', 'NULL', 'NULL', 'NULL'),
  ('Mask Does Not Include Shoulders', 'O3_0190350_00006', 'NULL', 'NULL', 'NULL'),
  ('Custom Cradle Full Body', 'O3_0190350_00007', 'NULL', 'NULL', 'NULL'),
  ('Custom Cradle Treatment Area', 'O3_0190350_00008', 'NULL', 'NULL', 'NULL'),
  ('3D Printed Device', 'O3_0190350_00009', 'NULL', 'NULL', 'NULL'),
  ('Foot Blocks', 'O3_0190350_00010', 'NULL', 'NULL', 'NULL'),
  ('Breast Board Supine', 'O3_0190350_00011', 'NULL', 'NULL', 'NULL'),
  ('Breast Board Prone', 'O3_0190350_00012', 'NULL', 'NULL', 'NULL'),
  ('Angle Board', 'O3_0190350_00013', 'NULL', 'NULL', 'NULL'),
  ('Device Indexed to Couch', 'O3_0190350_00014', 'NULL', 'NULL', 'NULL'),
  ('Vendor Specific', 'O3_0190350_00015', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0190350_00016', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_TypeOfPatientPositioningDevice', 'RTTreatedPlan_TypeOfPatientPositioningDevice_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_TypeOfPatientPositioningDevice_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_TypeOfPatientPositioningDevice_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_TypeOfPatientPositioningDevice]([SVL_RTTreatedPlan_TypeOfPatientPositioningDevice_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlan_DailyBowelBladderManagement] (
    [SVL_RTTreatedPlan_DailyBowelBladderManagement_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlan_DailyBowelBladderManagement] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlan_DailyBowelBladderManagement] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlan_DailyBowelBladderManagement_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlan_DailyBowelBladderManagement] ([RTTreatedPlan_DailyBowelBladderManagement], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0190360_00001', 'NULL', 'NULL', 'NULL'),
  ('Bowel', 'O3_0190360_00002', 'NULL', 'NULL', 'NULL'),
  ('Bladder Empty', 'O3_0190360_00003', 'NULL', 'NULL', 'NULL'),
  ('Bladder Full', 'O3_0190360_00004', 'NULL', 'NULL', 'NULL'),
  ('Gastric Filling', 'O3_0190360_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlan.RTTreatedPlan_DailyBowelBladderManagement', 'RTTreatedPlan_DailyBowelBladderManagement_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ALTER COLUMN [RTTreatedPlan_DailyBowelBladderManagement_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlan]
ADD FOREIGN KEY ([RTTreatedPlan_DailyBowelBladderManagement_ID])
REFERENCES [dbo].[SVL_RTTreatedPlan_DailyBowelBladderManagement]([SVL_RTTreatedPlan_DailyBowelBladderManagement_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanTargetDose_DoseUnit] (
    [SVL_RTTreatedPlanTargetDose_DoseUnit_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanTargetDose_DoseUnit] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanTargetDose_DoseUnit] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanTargetDose_DoseUnit_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanTargetDose_DoseUnit] ([RTTreatedPlanTargetDose_DoseUnit], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('cGy', 'O3_0200030_00001', 'NULL', 'NULL', 'NULL'),
  ('Gy', 'O3_0200030_00002', 'NULL', 'NULL', 'NULL'),
  ('CGE', 'O3_0200030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanTargetDose.RTTreatedPlanTargetDose_DoseUnit', 'RTTreatedPlanTargetDose_DoseUnit_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanTargetDose]
ALTER COLUMN [RTTreatedPlanTargetDose_DoseUnit_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanTargetDose]
ADD FOREIGN KEY ([RTTreatedPlanTargetDose_DoseUnit_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanTargetDose_DoseUnit]([SVL_RTTreatedPlanTargetDose_DoseUnit_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ReirradiationEvaluation_ValueType] (
    [SVL_ReirradiationEvaluation_ValueType_ID][int] IDENTITY(1,1) NOT NULL,
    [ReirradiationEvaluation_ValueType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ReirradiationEvaluation_ValueType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ReirradiationEvaluation_ValueType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ReirradiationEvaluation_ValueType] ([ReirradiationEvaluation_ValueType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Component', 'O3_0210160_00001', 'NULL', 'NULL', 'NULL'),
  ('Cumulative', 'O3_0210160_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ReirradiationEvaluation.ReirradiationEvaluation_ValueType', 'ReirradiationEvaluation_ValueType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ReirradiationEvaluation]
ALTER COLUMN [ReirradiationEvaluation_ValueType_ID] int NULL;
GO

ALTER TABLE [dbo].[ReirradiationEvaluation]
ADD FOREIGN KEY ([ReirradiationEvaluation_ValueType_ID])
REFERENCES [dbo].[SVL_ReirradiationEvaluation_ValueType]([SVL_ReirradiationEvaluation_ValueType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ReirradiationEvaluation_PriorDoseEstimateBasis] (
    [SVL_ReirradiationEvaluation_PriorDoseEstimateBasis_ID][int] IDENTITY(1,1) NOT NULL,
    [ReirradiationEvaluation_PriorDoseEstimateBasis] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ReirradiationEvaluation_PriorDoseEstimateBasis] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ReirradiationEvaluation_PriorDoseEstimateBasis_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ReirradiationEvaluation_PriorDoseEstimateBasis] ([ReirradiationEvaluation_PriorDoseEstimateBasis], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('DICOM RT', 'O3_0210090_00001', 'NULL', 'NULL', 'NULL'),
  ('Radiation Treatment Plan Documents', 'O3_0210090_00002', 'NULL', 'NULL', 'NULL'),
  ('Clinician Notes', 'O3_0210090_00003', 'NULL', 'NULL', 'NULL'),
  ('Mockup Prior Plan on Current Structure Set', 'O3_0210090_00004', 'NULL', 'NULL', 'NULL'),
  ('No information available', 'O3_0210090_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ReirradiationEvaluation.ReirradiationEvaluation_PriorDoseEstimateBasis', 'ReirradiationEvaluation_PriorDoseEstimateBasis_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ReirradiationEvaluation]
ALTER COLUMN [ReirradiationEvaluation_PriorDoseEstimateBasis_ID] int NULL;
GO

ALTER TABLE [dbo].[ReirradiationEvaluation]
ADD FOREIGN KEY ([ReirradiationEvaluation_PriorDoseEstimateBasis_ID])
REFERENCES [dbo].[SVL_ReirradiationEvaluation_PriorDoseEstimateBasis]([SVL_ReirradiationEvaluation_PriorDoseEstimateBasis_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ReirradiationEvaluation_RegistrationBasis] (
    [SVL_ReirradiationEvaluation_RegistrationBasis_ID][int] IDENTITY(1,1) NOT NULL,
    [ReirradiationEvaluation_RegistrationBasis] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ReirradiationEvaluation_RegistrationBasis] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ReirradiationEvaluation_RegistrationBasis_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ReirradiationEvaluation_RegistrationBasis] ([ReirradiationEvaluation_RegistrationBasis], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Rigid Registration', 'O3_0210100_00001', 'NULL', 'NULL', 'NULL'),
  ('Deformable Registration', 'O3_0210100_00002', 'NULL', 'NULL', 'NULL'),
  ('Point Dose Estimate', 'O3_0210100_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ReirradiationEvaluation.ReirradiationEvaluation_RegistrationBasis', 'ReirradiationEvaluation_RegistrationBasis_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ReirradiationEvaluation]
ALTER COLUMN [ReirradiationEvaluation_RegistrationBasis_ID] int NULL;
GO

ALTER TABLE [dbo].[ReirradiationEvaluation]
ADD FOREIGN KEY ([ReirradiationEvaluation_RegistrationBasis_ID])
REFERENCES [dbo].[SVL_ReirradiationEvaluation_RegistrationBasis]([SVL_ReirradiationEvaluation_RegistrationBasis_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ReirradiationEvaluation_DVHMetric_StructureName] (
    [SVL_ReirradiationEvaluation_DVHMetric_StructureName_ID][int] IDENTITY(1,1) NOT NULL,
    [ReirradiationEvaluation_DVHMetric_StructureName] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ReirradiationEvaluation_DVHMetric_StructureName] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ReirradiationEvaluation_DVHMetric_StructureName_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ReirradiationEvaluation_DVHMetric_StructureName] ([ReirradiationEvaluation_DVHMetric_StructureName], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('TG263', 'O3_0560010_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ReirradiationEvaluation_DVHMetric.ReirradiationEvaluation_DVHMetric_StructureName', 'ReirradiationEvaluation_DVHMetric_StructureName_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ReirradiationEvaluation_DVHMetric]
ALTER COLUMN [ReirradiationEvaluation_DVHMetric_StructureName_ID] int NULL;
GO

ALTER TABLE [dbo].[ReirradiationEvaluation_DVHMetric]
ADD FOREIGN KEY ([ReirradiationEvaluation_DVHMetric_StructureName_ID])
REFERENCES [dbo].[SVL_ReirradiationEvaluation_DVHMetric_StructureName]([SVL_ReirradiationEvaluation_DVHMetric_StructureName_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_ReirradiationEvaluation_DVHMetric_ComparisonType] (
    [SVL_ReirradiationEvaluation_DVHMetric_ComparisonType_ID][int] IDENTITY(1,1) NOT NULL,
    [ReirradiationEvaluation_DVHMetric_ComparisonType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_ReirradiationEvaluation_DVHMetric_ComparisonType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_ReirradiationEvaluation_DVHMetric_ComparisonType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_ReirradiationEvaluation_DVHMetric_ComparisonType] ([ReirradiationEvaluation_DVHMetric_ComparisonType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('GreaterThanOrEqualTo', 'O3_0560040_00001', 'NULL', 'NULL', 'NULL'),
  ('LessThanOrEqualTo', 'O3_0560040_00002', 'NULL', 'NULL', 'NULL'),
  ('GreaterThan', 'O3_0560040_00003', 'NULL', 'NULL', 'NULL'),
  ('LessThan', 'O3_0560040_00004', 'NULL', 'NULL', 'NULL'),
  ('EqualTo', 'O3_0560040_00005', 'NULL', 'NULL', 'NULL'),
  ('NotEqualTo', 'O3_0560040_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.ReirradiationEvaluation_DVHMetric.ReirradiationEvaluation_DVHMetric_ComparisonType', 'ReirradiationEvaluation_DVHMetric_ComparisonType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[ReirradiationEvaluation_DVHMetric]
ALTER COLUMN [ReirradiationEvaluation_DVHMetric_ComparisonType_ID] int NULL;
GO

ALTER TABLE [dbo].[ReirradiationEvaluation_DVHMetric]
ADD FOREIGN KEY ([ReirradiationEvaluation_DVHMetric_ComparisonType_ID])
REFERENCES [dbo].[SVL_ReirradiationEvaluation_DVHMetric_ComparisonType]([SVL_ReirradiationEvaluation_DVHMetric_ComparisonType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsXRT_Technique] (
    [SVL_RTTreatedPlanDetailsXRT_Technique_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsXRT_Technique] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsXRT_Technique] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsXRT_Technique_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsXRT_Technique] ([RTTreatedPlanDetailsXRT_Technique], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('IMRT', 'O3_0220010_00001', 'NULL', 'NULL', 'NULL'),
  ('VMAT', 'O3_0220010_00002', 'NULL', 'NULL', 'NULL'),
  ('3D', 'O3_0220010_00003', 'NULL', 'NULL', 'NULL'),
  ('2D', 'O3_0220010_00004', 'NULL', 'NULL', 'NULL'),
  ('IORT', 'O3_0220010_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsXRT.RTTreatedPlanDetailsXRT_Technique', 'RTTreatedPlanDetailsXRT_Technique_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ALTER COLUMN [RTTreatedPlanDetailsXRT_Technique_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ADD FOREIGN KEY ([RTTreatedPlanDetailsXRT_Technique_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsXRT_Technique]([SVL_RTTreatedPlanDetailsXRT_Technique_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsXRT_IMRTLeafMotion] (
    [SVL_RTTreatedPlanDetailsXRT_IMRTLeafMotion_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsXRT_IMRTLeafMotion] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsXRT_IMRTLeafMotion] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsXRT_IMRTLeafMotion_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsXRT_IMRTLeafMotion] ([RTTreatedPlanDetailsXRT_IMRTLeafMotion], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Sliding Window', 'O3_0220020_00001', 'NULL', 'NULL', 'NULL'),
  ('Multiple Static Segments', 'O3_0220020_00002', 'NULL', 'NULL', 'NULL'),
  ('None', 'O3_0220020_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsXRT.RTTreatedPlanDetailsXRT_IMRTLeafMotion', 'RTTreatedPlanDetailsXRT_IMRTLeafMotion_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ALTER COLUMN [RTTreatedPlanDetailsXRT_IMRTLeafMotion_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ADD FOREIGN KEY ([RTTreatedPlanDetailsXRT_IMRTLeafMotion_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsXRT_IMRTLeafMotion]([SVL_RTTreatedPlanDetailsXRT_IMRTLeafMotion_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsXRT_DeliveryDevice] (
    [SVL_RTTreatedPlanDetailsXRT_DeliveryDevice_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsXRT_DeliveryDevice] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsXRT_DeliveryDevice] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsXRT_DeliveryDevice_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsXRT_DeliveryDevice] ([RTTreatedPlanDetailsXRT_DeliveryDevice], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Linac', 'O3_0220030_00001', 'NULL', 'NULL', 'NULL'),
  ('Ring Linac', 'O3_0220030_00002', 'NULL', 'NULL', 'NULL'),
  ('MR Linac', 'O3_0220030_00003', 'NULL', 'NULL', 'NULL'),
  ('Robotic Linac', 'O3_0220030_00004', 'NULL', 'NULL', 'NULL'),
  ('kV', 'O3_0220030_00005', 'NULL', 'NULL', 'NULL'),
  ('Multi-Source', 'O3_0220030_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsXRT.RTTreatedPlanDetailsXRT_DeliveryDevice', 'RTTreatedPlanDetailsXRT_DeliveryDevice_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ALTER COLUMN [RTTreatedPlanDetailsXRT_DeliveryDevice_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ADD FOREIGN KEY ([RTTreatedPlanDetailsXRT_DeliveryDevice_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsXRT_DeliveryDevice]([SVL_RTTreatedPlanDetailsXRT_DeliveryDevice_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsXRT_Energy] (
    [SVL_RTTreatedPlanDetailsXRT_Energy_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsXRT_Energy] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsXRT_Energy] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsXRT_Energy_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsXRT_Energy] ([RTTreatedPlanDetailsXRT_Energy], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None specified', 'O3_0220040_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsXRT.RTTreatedPlanDetailsXRT_Energy', 'RTTreatedPlanDetailsXRT_Energy_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ALTER COLUMN [RTTreatedPlanDetailsXRT_Energy_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsXRT]
ADD FOREIGN KEY ([RTTreatedPlanDetailsXRT_Energy_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsXRT_Energy]([SVL_RTTreatedPlanDetailsXRT_Energy_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_Technique] (
    [SVL_RTTreatedPlanDetailsBrachytherapy_Technique_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsBrachytherapy_Technique] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsBrachytherapy_Technique] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsBrachytherapy_Technique_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_Technique] ([RTTreatedPlanDetailsBrachytherapy_Technique], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('CAV', 'O3_0230010_00001', ' SCTID-384692006', ' NCITC-C28049', ' NCIMT-C0021864'),
  ('CAV-IMB', 'O3_0230010_00002', ' SCTID-_', ' NCITC-C179217', ' NCIMT-CL1662058'),
  ('INSTIT', 'O3_0230010_00003', ' SCTID-113120007', ' NCITC-C66891', ' NCIMT-C1881237'),
  ('VASC', 'O3_0230010_00004', ' SCTID-1156383000', ' NCITC-_', ' NCIMT-_'),
  ('LUM', 'O3_0230010_00005', ' SCTID-384691004', ' NCITC-_', ' NCIMT-_'),
  ('IORT', 'O3_0230010_00006', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('SURF', 'O3_0230010_00007', ' SCTID-14473006', ' NCITC-_', ' NCIMT-_');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsBrachytherapy.RTTreatedPlanDetailsBrachytherapy_Technique', 'RTTreatedPlanDetailsBrachytherapy_Technique_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsBrachytherapy]
ALTER COLUMN [RTTreatedPlanDetailsBrachytherapy_Technique_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsBrachytherapy]
ADD FOREIGN KEY ([RTTreatedPlanDetailsBrachytherapy_Technique_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_Technique]([SVL_RTTreatedPlanDetailsBrachytherapy_Technique_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_DeliveryDevice] (
    [SVL_RTTreatedPlanDetailsBrachytherapy_DeliveryDevice_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsBrachytherapy_DeliveryDevice] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsBrachytherapy_DeliveryDevice] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsBrachytherapy_DeliveryDevice_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_DeliveryDevice] ([RTTreatedPlanDetailsBrachytherapy_DeliveryDevice], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Tandem', 'O3_0230020_00001', ' SCTID-_', ' NCITC-C106076', ' NCIMT-C3827861'),
  ('Ovoid', 'O3_0230020_00002', ' SCTID-_', ' NCITC-C106077', ' NCIMT-C3829057'),
  ('Ring', 'O3_0230020_00003', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Cylinder', 'O3_0230020_00004', ' SCTID-_', ' NCITC-C106079', ' NCIMT-C3827671'),
  ('Heyman Capsules', 'O3_0230020_00005', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Seeds', 'O3_0230020_00006', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Catheter', 'O3_0230020_00007', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Catheter Flap', 'O3_0230020_00008', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Eye Plaque', 'O3_0230020_00009', ' SCTID-420529003', ' NCITC-C93339', ' NCIMT-C2985559'),
  ('Mold Applicator', 'O3_0230020_00010', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Balloon Style', 'O3_0230020_00011', ' SCTID-_', ' NCITC-C64385', ' NCIMT-C64385'),
  ('Strut Style', 'O3_0230020_00012', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Hybrid', 'O3_0230020_00013', ' SCTID-_', ' NCITC-_', ' NCIMT-_');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsBrachytherapy.RTTreatedPlanDetailsBrachytherapy_DeliveryDevice', 'RTTreatedPlanDetailsBrachytherapy_DeliveryDevice_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsBrachytherapy]
ALTER COLUMN [RTTreatedPlanDetailsBrachytherapy_DeliveryDevice_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsBrachytherapy]
ADD FOREIGN KEY ([RTTreatedPlanDetailsBrachytherapy_DeliveryDevice_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_DeliveryDevice]([SVL_RTTreatedPlanDetailsBrachytherapy_DeliveryDevice_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_Energy] (
    [SVL_RTTreatedPlanDetailsBrachytherapy_Energy_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsBrachytherapy_Energy] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsBrachytherapy_Energy] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsBrachytherapy_Energy_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_Energy] ([RTTreatedPlanDetailsBrachytherapy_Energy], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None specified', 'O3_0230030_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsBrachytherapy.RTTreatedPlanDetailsBrachytherapy_Energy', 'RTTreatedPlanDetailsBrachytherapy_Energy_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsBrachytherapy]
ALTER COLUMN [RTTreatedPlanDetailsBrachytherapy_Energy_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsBrachytherapy]
ADD FOREIGN KEY ([RTTreatedPlanDetailsBrachytherapy_Energy_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsBrachytherapy_Energy]([SVL_RTTreatedPlanDetailsBrachytherapy_Energy_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Technique] (
    [SVL_RTTreatedPlanDetailsRadiopharmaceutical_Technique_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsRadiopharmaceutical_Technique] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsRadiopharmaceutical_Technique] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Technique_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Technique] ([RTTreatedPlanDetailsRadiopharmaceutical_Technique], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Oral', 'O3_0240010_00001', ' SCTID-16560241000119104', ' NCITC-_', ' NCIMT-_'),
  ('Vascular', 'O3_0240010_00002', ' SCTID-_', ' NCITC-_', ' NCIMT-_');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsRadiopharmaceutical.RTTreatedPlanDetailsRadiopharmaceutical_Technique', 'RTTreatedPlanDetailsRadiopharmaceutical_Technique_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsRadiopharmaceutical]
ALTER COLUMN [RTTreatedPlanDetailsRadiopharmaceutical_Technique_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsRadiopharmaceutical]
ADD FOREIGN KEY ([RTTreatedPlanDetailsRadiopharmaceutical_Technique_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Technique]([SVL_RTTreatedPlanDetailsRadiopharmaceutical_Technique_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Energy] (
    [SVL_RTTreatedPlanDetailsRadiopharmaceutical_Energy_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsRadiopharmaceutical_Energy] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsRadiopharmaceutical_Energy] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Energy_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Energy] ([RTTreatedPlanDetailsRadiopharmaceutical_Energy], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None specified', 'O3_0240020_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsRadiopharmaceutical.RTTreatedPlanDetailsRadiopharmaceutical_Energy', 'RTTreatedPlanDetailsRadiopharmaceutical_Energy_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsRadiopharmaceutical]
ALTER COLUMN [RTTreatedPlanDetailsRadiopharmaceutical_Energy_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsRadiopharmaceutical]
ADD FOREIGN KEY ([RTTreatedPlanDetailsRadiopharmaceutical_Energy_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsRadiopharmaceutical_Energy]([SVL_RTTreatedPlanDetailsRadiopharmaceutical_Energy_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsHadrons_AreaCoverageMethod] (
    [SVL_RTTreatedPlanDetailsHadrons_AreaCoverageMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsHadrons_AreaCoverageMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsHadrons_AreaCoverageMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsHadrons_AreaCoverageMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsHadrons_AreaCoverageMethod] ([RTTreatedPlanDetailsHadrons_AreaCoverageMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Passive Scattering', 'O3_0250010_00001', ' SCTID-1156529004', ' NCITC-C104942', ' NCIMT-C3641898'),
  ('Spot Scanning', 'O3_0250010_00002', ' SCTID-1156528007', ' NCITC-C104941', ' NCIMT-C3641897'),
  ('Uniform Active Scanning', 'O3_0250010_00003', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Continuous Scanning', 'O3_0250010_00004', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Mixed', 'O3_0250010_00005', ' SCTID-_', ' NCITC-_', ' NCIMT-_');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsHadrons.RTTreatedPlanDetailsHadrons_AreaCoverageMethod', 'RTTreatedPlanDetailsHadrons_AreaCoverageMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ALTER COLUMN [RTTreatedPlanDetailsHadrons_AreaCoverageMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ADD FOREIGN KEY ([RTTreatedPlanDetailsHadrons_AreaCoverageMethod_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsHadrons_AreaCoverageMethod]([SVL_RTTreatedPlanDetailsHadrons_AreaCoverageMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsHadrons_FieldOptimizationMethod] (
    [SVL_RTTreatedPlanDetailsHadrons_FieldOptimizationMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsHadrons_FieldOptimizationMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsHadrons_FieldOptimizationMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsHadrons_FieldOptimizationMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsHadrons_FieldOptimizationMethod] ([RTTreatedPlanDetailsHadrons_FieldOptimizationMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Single field', 'O3_0250020_00001', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Multi-field', 'O3_0250020_00002', ' SCTID-_', ' NCITC-_', ' NCIMT-_');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsHadrons.RTTreatedPlanDetailsHadrons_FieldOptimizationMethod', 'RTTreatedPlanDetailsHadrons_FieldOptimizationMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ALTER COLUMN [RTTreatedPlanDetailsHadrons_FieldOptimizationMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ADD FOREIGN KEY ([RTTreatedPlanDetailsHadrons_FieldOptimizationMethod_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsHadrons_FieldOptimizationMethod]([SVL_RTTreatedPlanDetailsHadrons_FieldOptimizationMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsHadrons_ProtonRobustOptimization] (
    [SVL_RTTreatedPlanDetailsHadrons_ProtonRobustOptimization_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsHadrons_ProtonRobustOptimization] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsHadrons_ProtonRobustOptimization] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsHadrons_ProtonRobustOptimization_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsHadrons_ProtonRobustOptimization] ([RTTreatedPlanDetailsHadrons_ProtonRobustOptimization], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Optimization to CTV', 'O3_0250030_00001', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Optimization to PTV', 'O3_0250030_00002', ' SCTID-_', ' NCITC-_', ' NCIMT-_');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsHadrons.RTTreatedPlanDetailsHadrons_ProtonRobustOptimization', 'RTTreatedPlanDetailsHadrons_ProtonRobustOptimization_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ALTER COLUMN [RTTreatedPlanDetailsHadrons_ProtonRobustOptimization_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ADD FOREIGN KEY ([RTTreatedPlanDetailsHadrons_ProtonRobustOptimization_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsHadrons_ProtonRobustOptimization]([SVL_RTTreatedPlanDetailsHadrons_ProtonRobustOptimization_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis] (
    [SVL_RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis] ([RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Fixed', 'O3_0250040_00001', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('LET based', 'O3_0250040_00002', ' SCTID-_', ' NCITC-_', ' NCIMT-_'),
  ('Variable biologic model', 'O3_0250040_00003', ' SCTID-_', ' NCITC-_', ' NCIMT-_');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsHadrons.RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis', 'RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ALTER COLUMN [RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ADD FOREIGN KEY ([RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis]([SVL_RTTreatedPlanDetailsHadrons_RelativeBiologicalEffectivenessBasis_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedPlanDetailsHadrons_RepaintingTechnique] (
    [SVL_RTTreatedPlanDetailsHadrons_RepaintingTechnique_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedPlanDetailsHadrons_RepaintingTechnique] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedPlanDetailsHadrons_RepaintingTechnique] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedPlanDetailsHadrons_RepaintingTechnique_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedPlanDetailsHadrons_RepaintingTechnique] ([RTTreatedPlanDetailsHadrons_RepaintingTechnique], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Volumetric repainting', 'O3_0250070_00001', 'NULL', 'NULL', 'NULL'),
  ('Layer Repainting', 'O3_0250070_00002', 'NULL', 'NULL', 'NULL'),
  ('Spot dose repainting', 'O3_0250070_00003', 'NULL', 'NULL', 'NULL'),
  ('Phase correlated repainting', 'O3_0250070_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedPlanDetailsHadrons.RTTreatedPlanDetailsHadrons_RepaintingTechnique', 'RTTreatedPlanDetailsHadrons_RepaintingTechnique_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ALTER COLUMN [RTTreatedPlanDetailsHadrons_RepaintingTechnique_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedPlanDetailsHadrons]
ADD FOREIGN KEY ([RTTreatedPlanDetailsHadrons_RepaintingTechnique_ID])
REFERENCES [dbo].[SVL_RTTreatedPlanDetailsHadrons_RepaintingTechnique]([SVL_RTTreatedPlanDetailsHadrons_RepaintingTechnique_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTTreatedFieldDetailsHadrons_RangeShifter] (
    [SVL_RTTreatedFieldDetailsHadrons_RangeShifter_ID][int] IDENTITY(1,1) NOT NULL,
    [RTTreatedFieldDetailsHadrons_RangeShifter] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTTreatedFieldDetailsHadrons_RangeShifter] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTTreatedFieldDetailsHadrons_RangeShifter_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTTreatedFieldDetailsHadrons_RangeShifter] ([RTTreatedFieldDetailsHadrons_RangeShifter], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0260020_00001', 'NULL', 'NULL', 'NULL'),
  ('Patient Level Bolus', 'O3_0260020_00002', 'NULL', 'NULL', 'NULL'),
  ('In Beam Range Shifter', 'O3_0260020_00003', 'NULL', 'NULL', 'NULL'),
  ('2D patient Compensator', 'O3_0260020_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTTreatedFieldDetailsHadrons.RTTreatedFieldDetailsHadrons_RangeShifter', 'RTTreatedFieldDetailsHadrons_RangeShifter_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTTreatedFieldDetailsHadrons]
ALTER COLUMN [RTTreatedFieldDetailsHadrons_RangeShifter_ID] int NULL;
GO

ALTER TABLE [dbo].[RTTreatedFieldDetailsHadrons]
ADD FOREIGN KEY ([RTTreatedFieldDetailsHadrons_RangeShifter_ID])
REFERENCES [dbo].[SVL_RTTreatedFieldDetailsHadrons_RangeShifter]([SVL_RTTreatedFieldDetailsHadrons_RangeShifter_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DVHCurve_StructureName] (
    [SVL_DVHCurve_StructureName_ID][int] IDENTITY(1,1) NOT NULL,
    [DVHCurve_StructureName] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DVHCurve_StructureName] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DVHCurve_StructureName_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DVHCurve_StructureName] ([DVHCurve_StructureName], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('TG263', 'O3_0290010_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DVHCurve.DVHCurve_StructureName', 'DVHCurve_StructureName_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DVHCurve]
ALTER COLUMN [DVHCurve_StructureName_ID] int NULL;
GO

ALTER TABLE [dbo].[DVHCurve]
ADD FOREIGN KEY ([DVHCurve_StructureName_ID])
REFERENCES [dbo].[SVL_DVHCurve_StructureName]([SVL_DVHCurve_StructureName_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DVHCurve_DoseUnits] (
    [SVL_DVHCurve_DoseUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [DVHCurve_DoseUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DVHCurve_DoseUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DVHCurve_DoseUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DVHCurve_DoseUnits] ([DVHCurve_DoseUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('cGy', 'O3_0290030_00001', 'NULL', 'NULL', 'NULL'),
  ('Gy', 'O3_0290030_00002', 'NULL', 'NULL', 'NULL'),
  ('cGE', 'O3_0290030_00003', 'NULL', 'NULL', 'NULL'),
  ('EQD2Gy', 'O3_0290030_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DVHCurve.DVHCurve_DoseUnits', 'DVHCurve_DoseUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DVHCurve]
ALTER COLUMN [DVHCurve_DoseUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[DVHCurve]
ADD FOREIGN KEY ([DVHCurve_DoseUnits_ID])
REFERENCES [dbo].[SVL_DVHCurve_DoseUnits]([SVL_DVHCurve_DoseUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DVHMetric_StructureName] (
    [SVL_DVHMetric_StructureName_ID][int] IDENTITY(1,1) NOT NULL,
    [DVHMetric_StructureName] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DVHMetric_StructureName] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DVHMetric_StructureName_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DVHMetric_StructureName] ([DVHMetric_StructureName], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('TG263', 'O3_0430010_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DVHMetric.DVHMetric_StructureName', 'DVHMetric_StructureName_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DVHMetric]
ALTER COLUMN [DVHMetric_StructureName_ID] int NULL;
GO

ALTER TABLE [dbo].[DVHMetric]
ADD FOREIGN KEY ([DVHMetric_StructureName_ID])
REFERENCES [dbo].[SVL_DVHMetric_StructureName]([SVL_DVHMetric_StructureName_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_DVHMetric_ComparisonType] (
    [SVL_DVHMetric_ComparisonType_ID][int] IDENTITY(1,1) NOT NULL,
    [DVHMetric_ComparisonType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_DVHMetric_ComparisonType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_DVHMetric_ComparisonType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_DVHMetric_ComparisonType] ([DVHMetric_ComparisonType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('GreaterThanOrEqualTo', 'O3_0430040_00001', 'NULL', 'NULL', 'NULL'),
  ('LessThanOrEqualTo', 'O3_0430040_00002', 'NULL', 'NULL', 'NULL'),
  ('GreaterThan', 'O3_0430040_00003', 'NULL', 'NULL', 'NULL'),
  ('LessThan', 'O3_0430040_00004', 'NULL', 'NULL', 'NULL'),
  ('EqualTo', 'O3_0430040_00005', 'NULL', 'NULL', 'NULL'),
  ('NotEqualTo', 'O3_0430040_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.DVHMetric.DVHMetric_ComparisonType', 'DVHMetric_ComparisonType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[DVHMetric]
ALTER COLUMN [DVHMetric_ComparisonType_ID] int NULL;
GO

ALTER TABLE [dbo].[DVHMetric]
ADD FOREIGN KEY ([DVHMetric_ComparisonType_ID])
REFERENCES [dbo].[SVL_DVHMetric_ComparisonType]([SVL_DVHMetric_ComparisonType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPlanningStructure_Type] (
    [SVL_RTPlanningStructure_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPlanningStructure_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPlanningStructure_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPlanningStructure_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPlanningStructure_Type] ([RTPlanningStructure_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Target', 'O3_0300070_00001', 'NULL', 'NULL', 'NULL'),
  ('Organ At Risk', 'O3_0300070_00002', 'NULL', 'NULL', 'NULL'),
  ('Implanted Electronic Device (e.g. pacemaker)', 'O3_0300070_00003', 'NULL', 'NULL', 'NULL'),
  ('Dose Monitoring', 'O3_0300070_00004', 'NULL', 'NULL', 'NULL'),
  ('Dose Tuning', 'O3_0300070_00005', 'NULL', 'NULL', 'NULL'),
  ('Image Guidance', 'O3_0300070_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPlanningStructure.RTPlanningStructure_Type', 'RTPlanningStructure_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPlanningStructure]
ALTER COLUMN [RTPlanningStructure_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPlanningStructure]
ADD FOREIGN KEY ([RTPlanningStructure_Type_ID])
REFERENCES [dbo].[SVL_RTPlanningStructure_Type]([SVL_RTPlanningStructure_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_RTPlanningStructure_PlanningStructureGeneration] (
    [SVL_RTPlanningStructure_PlanningStructureGeneration_ID][int] IDENTITY(1,1) NOT NULL,
    [RTPlanningStructure_PlanningStructureGeneration] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_RTPlanningStructure_PlanningStructureGeneration] PRIMARY KEY CLUSTERED
    	(
      		[SVL_RTPlanningStructure_PlanningStructureGeneration_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_RTPlanningStructure_PlanningStructureGeneration] ([RTPlanningStructure_PlanningStructureGeneration], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Manual', 'O3_0300080_00001', 'NULL', 'NULL', 'NULL'),
  ('Automated Multi-Institution Validated - Atlas Based', 'O3_0300080_00002', 'NULL', 'NULL', 'NULL'),
  ('Automated Multi-Institution Validated - Algorithm Based', 'O3_0300080_00003', 'NULL', 'NULL', 'NULL'),
  ('Automated Multi-Institution Validated - AI/ML', 'O3_0300080_00004', 'NULL', 'NULL', 'NULL'),
  ('Automated Single Institution Validated - Atlas Based', 'O3_0300080_00005', 'NULL', 'NULL', 'NULL'),
  ('Automated Single Institution Validated - Algorithm Based', 'O3_0300080_00006', 'NULL', 'NULL', 'NULL'),
  ('Automated Single Institution Validated - AI/ML', 'O3_0300080_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.RTPlanningStructure.RTPlanningStructure_PlanningStructureGeneration', 'RTPlanningStructure_PlanningStructureGeneration_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[RTPlanningStructure]
ALTER COLUMN [RTPlanningStructure_PlanningStructureGeneration_ID] int NULL;
GO

ALTER TABLE [dbo].[RTPlanningStructure]
ADD FOREIGN KEY ([RTPlanningStructure_PlanningStructureGeneration_ID])
REFERENCES [dbo].[SVL_RTPlanningStructure_PlanningStructureGeneration]([SVL_RTPlanningStructure_PlanningStructureGeneration_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_Image_Type] (
    [SVL_Image_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [Image_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_Image_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_Image_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_Image_Type] ([Image_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Computed Tomography', 'O3_0310030_00001', ' SCTID-', 'NCITC- C17204', 'NCIMT- C0040405'),
  ('Magnetic Resonance Imaging', 'O3_0310030_00002', ' SCTID- 113091000', ' NCITC- C16809', ' NCIMT- C0024485'),
  ('Positron Emission Tomography', 'O3_0310030_00003', 'NULL', 'NULL', 'NULL'),
  ('Single Photon Emission Computed Tomograph', 'O3_0310030_00004', 'NULL', 'NULL', 'NULL'),
  ('Ultrasound', 'O3_0310030_00005', 'NULL', 'NULL', 'NULL'),
  ('Fluoroscopy', 'O3_0310030_00006', 'NULL', 'NULL', 'NULL'),
  ('Fluoroscopy-kV', 'O3_0310030_00011', 'NULL', 'NULL', 'NULL'),
  ('Fluoroscopy-MV', 'O3_0310030_00012', 'NULL', 'NULL', 'NULL'),
  ('Cone Beam Computed Tomography', 'O3_0310030_00007', 'NULL', 'NULL', 'NULL'),
  ('DEXA (Bone Density)', 'O3_0310030_00008', 'NULL', 'NULL', 'NULL'),
  ('Synthetic Computed Tomography', 'O3_0310030_00009', 'NULL', 'NULL', 'NULL'),
  ('Paired Onboard MV-kV', 'O3_0310030_00010', 'NULL', 'NULL', 'NULL'),
  ('Paired Onboard kV-kV', 'O3_0310030_00013', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.Image.Image_Type', 'Image_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[Image]
ALTER COLUMN [Image_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[Image]
ADD FOREIGN KEY ([Image_Type_ID])
REFERENCES [dbo].[SVL_Image_Type]([SVL_Image_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_LabResult_Name] (
    [SVL_LabResult_Name_ID][int] IDENTITY(1,1) NOT NULL,
    [LabResult_Name] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_LabResult_Name] PRIMARY KEY CLUSTERED
    	(
      		[SVL_LabResult_Name_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_LabResult_Name] ([LabResult_Name], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('PSA', 'O3_0320030_00001', ' SCTID- 63476009_', 'NCITC- C17634', ' NCIMT- C0201544'),
  ('Testosterone', 'O3_0320030_00002', ' SCTID- 104957004', 'NCITC- C2299', 'NCIMT- CL026906'),
  ('(+Other)', 'O3_0320030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.LabResult.LabResult_Name', 'LabResult_Name_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[LabResult]
ALTER COLUMN [LabResult_Name_ID] int NULL;
GO

ALTER TABLE [dbo].[LabResult]
ADD FOREIGN KEY ([LabResult_Name_ID])
REFERENCES [dbo].[SVL_LabResult_Name]([SVL_LabResult_Name_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCourse_Type] (
    [SVL_SysTherCourse_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCourse_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCourse_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCourse_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCourse_Type] ([SysTherCourse_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Androgen Deprivation', 'O3_0350080_00001', ' SCTID- 707266006', 'NCITC- C15676', 'NCIMT- C1515985'),
  ('Targeted', 'O3_0350080_00002', 'NULL', 'NULL', 'NULL'),
  ('Chemotherapy', 'O3_0350080_00003', ' SCTID- 367336001', 'NCITC- C15632', 'NCIMT- C0392920'),
  ('Immunotherapy', 'O3_0350080_00004', ' SCTID- 76334006', 'NCITC- C15262', 'NCIMT- C0021083'),
  ('Radiopharmaceutical', 'O3_0350080_00005', ' SCTID-_', 'NCITC-_', 'NCIMT-_');
GO

EXEC sp_rename 'dbo.SysTherCourse.SysTherCourse_Type', 'SysTherCourse_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCourse]
ALTER COLUMN [SysTherCourse_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCourse]
ADD FOREIGN KEY ([SysTherCourse_Type_ID])
REFERENCES [dbo].[SVL_SysTherCourse_Type]([SVL_SysTherCourse_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCourse_ResidenceDuringTreatment] (
    [SVL_SysTherCourse_ResidenceDuringTreatment_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCourse_ResidenceDuringTreatment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCourse_ResidenceDuringTreatment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCourse_ResidenceDuringTreatment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCourse_ResidenceDuringTreatment] ([SysTherCourse_ResidenceDuringTreatment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Primary Residence', 'O3_0350110_00001', 'NULL', 'NULL', 'NULL'),
  ('Other Location', 'O3_0350110_00002', 'NULL', 'NULL', 'NULL'),
  ('Other Location Subsidized', 'O3_0350110_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCourse.SysTherCourse_ResidenceDuringTreatment', 'SysTherCourse_ResidenceDuringTreatment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCourse]
ALTER COLUMN [SysTherCourse_ResidenceDuringTreatment_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCourse]
ADD FOREIGN KEY ([SysTherCourse_ResidenceDuringTreatment_ID])
REFERENCES [dbo].[SVL_SysTherCourse_ResidenceDuringTreatment]([SVL_SysTherCourse_ResidenceDuringTreatment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod] (
    [SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod] ([SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Country', 'O3_0350130_00001', 'NULL', 'NULL', 'NULL'),
  ('State', 'O3_0350130_00002', 'NULL', 'NULL', 'NULL'),
  ('Province', 'O3_0350130_00003', 'NULL', 'NULL', 'NULL'),
  ('County', 'O3_0350130_00004', 'NULL', 'NULL', 'NULL'),
  ('City', 'O3_0350130_00005', 'NULL', 'NULL', 'NULL'),
  ('Postal Code', 'O3_0350130_00006', 'NULL', 'NULL', 'NULL'),
  ('Address', 'O3_0350130_00007', 'NULL', 'NULL', 'NULL'),
  ('GPS', 'O3_0350130_00008', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0350130_00009', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCourse.SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod', 'SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCourse]
ALTER COLUMN [SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCourse]
ADD FOREIGN KEY ([SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID])
REFERENCES [dbo].[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod]([SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDirectMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCourse_DistanceToPatientDomicileDirectUnits] (
    [SVL_SysTherCourse_DistanceToPatientDomicileDirectUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCourse_DistanceToPatientDomicileDirectUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCourse_DistanceToPatientDomicileDirectUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCourse_DistanceToPatientDomicileDirectUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCourse_DistanceToPatientDomicileDirectUnits] ([SysTherCourse_DistanceToPatientDomicileDirectUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0350140_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0350140_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCourse.SysTherCourse_DistanceToPatientDomicileDirectUnits', 'SysTherCourse_DistanceToPatientDomicileDirectUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCourse]
ALTER COLUMN [SysTherCourse_DistanceToPatientDomicileDirectUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCourse]
ADD FOREIGN KEY ([SysTherCourse_DistanceToPatientDomicileDirectUnits_ID])
REFERENCES [dbo].[SVL_SysTherCourse_DistanceToPatientDomicileDirectUnits]([SVL_SysTherCourse_DistanceToPatientDomicileDirectUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits] (
    [SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits] ([SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0350170_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0350170_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCourse.SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits', 'SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCourse]
ALTER COLUMN [SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCourse]
ADD FOREIGN KEY ([SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
REFERENCES [dbo].[SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits]([SVL_SysTherCourse_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCycle_CycleStatus] (
    [SVL_SysTherCycle_CycleStatus_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCycle_CycleStatus] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCycle_CycleStatus] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCycle_CycleStatus_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCycle_CycleStatus] ([SysTherCycle_CycleStatus], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Completed', 'O3_0360040_00001', 'NULL', 'NULL', 'NULL'),
  ('Started but not Completed', 'O3_0360040_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCycle.SysTherCycle_CycleStatus', 'SysTherCycle_CycleStatus_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCycle]
ALTER COLUMN [SysTherCycle_CycleStatus_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCycle]
ADD FOREIGN KEY ([SysTherCycle_CycleStatus_ID])
REFERENCES [dbo].[SVL_SysTherCycle_CycleStatus]([SVL_SysTherCycle_CycleStatus_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCycle_AdministrationFrequency] (
    [SVL_SysTherCycle_AdministrationFrequency_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCycle_AdministrationFrequency] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCycle_AdministrationFrequency] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCycle_AdministrationFrequency_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCycle_AdministrationFrequency] ([SysTherCycle_AdministrationFrequency], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Every Other Day', 'O3_0360050_00001', ' SCTID- 225760004', 'NCITC- C64525', ' NCIMT- C0558287'),
  ('Once Daily', 'O3_0360050_00002', ' SCTID- 229797004', ' NCITC- C125004', ' NCIMT- C0556983'),
  ('Two Times per Day', 'O3_0360050_00003', ' SCTID-', 'NCITC- C64496', 'NCIMT- C0585361'),
  ('Three Times Per Day', 'O3_0360050_00004', ' SCTID- 229798009', 'NCITC- C64527', 'NCIMT- C0556984'),
  ('Every two weeks', 'O3_0360050_00005', 'NULL', 'NULL', 'NULL'),
  ('Every three weeks', 'O3_0360050_00006', 'NULL', 'NULL', 'NULL'),
  ('Every six weeks', 'O3_0360050_00008', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCycle.SysTherCycle_AdministrationFrequency', 'SysTherCycle_AdministrationFrequency_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCycle]
ALTER COLUMN [SysTherCycle_AdministrationFrequency_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCycle]
ADD FOREIGN KEY ([SysTherCycle_AdministrationFrequency_ID])
REFERENCES [dbo].[SVL_SysTherCycle_AdministrationFrequency]([SVL_SysTherCycle_AdministrationFrequency_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCycleDrugsChemo_AdministrationMethod] (
    [SVL_SysTherCycleDrugsChemo_AdministrationMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCycleDrugsChemo_AdministrationMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCycleDrugsChemo_AdministrationMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCycleDrugsChemo_AdministrationMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCycleDrugsChemo_AdministrationMethod] ([SysTherCycleDrugsChemo_AdministrationMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Oral', 'O3_0370020_00001', 'NULL', 'NULL', 'NULL'),
  ('Intravascular Infusion', 'O3_0370020_00002', 'NULL', 'NULL', 'NULL'),
  ('Intramuscular', 'O3_0370020_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCycleDrugsChemo.SysTherCycleDrugsChemo_AdministrationMethod', 'SysTherCycleDrugsChemo_AdministrationMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCycleDrugsChemo]
ALTER COLUMN [SysTherCycleDrugsChemo_AdministrationMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCycleDrugsChemo]
ADD FOREIGN KEY ([SysTherCycleDrugsChemo_AdministrationMethod_ID])
REFERENCES [dbo].[SVL_SysTherCycleDrugsChemo_AdministrationMethod]([SVL_SysTherCycleDrugsChemo_AdministrationMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCycleDrugsChemo_DrugName] (
    [SVL_SysTherCycleDrugsChemo_DrugName_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCycleDrugsChemo_DrugName] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCycleDrugsChemo_DrugName] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCycleDrugsChemo_DrugName_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCycleDrugsChemo_DrugName] ([SysTherCycleDrugsChemo_DrugName], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Prednisone', 'O3_0370030_00001', 'NULL', 'NULL', 'NULL'),
  ('Dexamethasone', 'O3_0370030_00002', 'NULL', 'NULL', 'NULL'),
  ('Hydrocortisone', 'O3_0370030_00003', 'NULL', 'NULL', 'NULL'),
  ('Docetaxel', 'O3_0370030_00004', 'NULL', 'NULL', 'NULL'),
  ('Cabazitaxel', 'O3_0370030_00005', 'NULL', 'NULL', 'NULL'),
  ('Mitoxantrone', 'O3_0370030_00006', 'NULL', 'NULL', 'NULL'),
  ('Methylprednisolone', 'O3_0370030_00007', 'NULL', 'NULL', 'NULL'),
  ('Carboplatin', 'O3_0370030_00008', 'NULL', 'NULL', 'NULL'),
  ('Cisplatin', 'O3_0370030_00010', 'NULL', 'NULL', 'NULL'),
  ('Paclitaxel', 'O3_0370030_00011', 'NULL', 'NULL', 'NULL'),
  ('5FU', 'O3_0370030_00012', 'NULL', 'NULL', 'NULL'),
  ('Pembrolizumab', 'O3_0370030_00013', 'NULL', 'NULL', 'NULL'),
  ('Gemcitabine', 'O3_0370030_00014', 'NULL', 'NULL', 'NULL'),
  ('Cetuximab', 'O3_0370030_00015', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0370030_00009', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCycleDrugsChemo.SysTherCycleDrugsChemo_DrugName', 'SysTherCycleDrugsChemo_DrugName_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCycleDrugsChemo]
ALTER COLUMN [SysTherCycleDrugsChemo_DrugName_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCycleDrugsChemo]
ADD FOREIGN KEY ([SysTherCycleDrugsChemo_DrugName_ID])
REFERENCES [dbo].[SVL_SysTherCycleDrugsChemo_DrugName]([SVL_SysTherCycleDrugsChemo_DrugName_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCycleDrugsHT_DrugName] (
    [SVL_SysTherCycleDrugsHT_DrugName_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCycleDrugsHT_DrugName] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCycleDrugsHT_DrugName] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCycleDrugsHT_DrugName_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCycleDrugsHT_DrugName] ([SysTherCycleDrugsHT_DrugName], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Leuprolide', 'O3_0460030_00001', ' SCTID- 397198002', 'NCITC- C62042', 'NCIMT- C0085272'),
  ('Bicalutamide', 'O3_0460030_00002', ' SCTID- 386908000 ', ' NCITC- C1599', ' NCIMT- C0285590'),
  ('Casodex', 'O3_0460030_00003', ' SCTID-_', 'NCITC-_', 'NCIMT-_'),
  ('Goserelin', 'O3_0460030_00004', ' SCTID- 108771008', 'NCITC-_', 'NCIMT-_'),
  ('Triptorelin', 'O3_0460030_00005', ' SCTID- 395915003', 'NCITC- C1267', 'NCIMT- C0077275'),
  ('Histerlin', 'O3_0460030_00006', 'NULL', 'NULL', 'NULL'),
  ('Degarelix', 'O3_0460030_00007', 'NULL', 'NULL', 'NULL'),
  ('Relugolix', 'O3_0460030_00008', 'NULL', 'NULL', 'NULL'),
  ('Flutamide', 'O3_0460030_00009', 'NULL', 'NULL', 'NULL'),
  ('Apalutamide', 'O3_0460030_00010', 'NULL', 'NULL', 'NULL'),
  ('Abiraterone', 'O3_0460030_00011', 'NULL', 'NULL', 'NULL'),
  ('Prednisone', 'O3_0460030_00012', 'NULL', 'NULL', 'NULL'),
  ('Fine-particle abiraterone', 'O3_0460030_00013', 'NULL', 'NULL', 'NULL'),
  ('Methylprednisone', 'O3_0460030_00014', 'NULL', 'NULL', 'NULL'),
  ('Enzalutamide', 'O3_0460030_00015', 'NULL', 'NULL', 'NULL'),
  ('darotalutamide', 'O3_0460030_00016', 'NULL', 'NULL', 'NULL'),
  ('Nilutamide', 'O3_0460030_00017', 'NULL', 'NULL', 'NULL'),
  ('Ketoconazole', 'O3_0460030_00018', 'NULL', 'NULL', 'NULL'),
  ('Ketoconazole plus hydrocortisone', 'O3_0460030_00019', 'NULL', 'NULL', 'NULL'),
  ('Hydrocortisone', 'O3_0460030_00020', 'NULL', 'NULL', 'NULL'),
  ('Dexamethasone', 'O3_0460030_00021', 'NULL', 'NULL', 'NULL'),
  ('Estrogens', 'O3_0460030_00022', 'NULL', 'NULL', 'NULL'),
  ('Diethylstilbestrol (DES)', 'O3_0460030_00023', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0460030_00024', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCycleDrugsHT.SysTherCycleDrugsHT_DrugName', 'SysTherCycleDrugsHT_DrugName_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCycleDrugsHT]
ALTER COLUMN [SysTherCycleDrugsHT_DrugName_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCycleDrugsHT]
ADD FOREIGN KEY ([SysTherCycleDrugsHT_DrugName_ID])
REFERENCES [dbo].[SVL_SysTherCycleDrugsHT_DrugName]([SVL_SysTherCycleDrugsHT_DrugName_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_SysTherCycleDrugsImmuno_DrugName] (
    [SVL_SysTherCycleDrugsImmuno_DrugName_ID][int] IDENTITY(1,1) NOT NULL,
    [SysTherCycleDrugsImmuno_DrugName] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_SysTherCycleDrugsImmuno_DrugName] PRIMARY KEY CLUSTERED
    	(
      		[SVL_SysTherCycleDrugsImmuno_DrugName_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_SysTherCycleDrugsImmuno_DrugName] ([SysTherCycleDrugsImmuno_DrugName], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Pembrolizumab ', 'O3_0390030_00001', ' SCTID- 716125002', ' NCITC- C20401', 'NCIMT- C0003250'),
  ('Sipuleucel-t', 'O3_0390030_00002', ' SCTID-_', 'NCITC- C1985', ' NCIMT- C1706668'),
  ('Cemiplimab', 'O3_0390030_00004', 'NULL', 'NULL', 'NULL'),
  ('Durvalumab', 'O3_0390030_00005', 'NULL', 'NULL', 'NULL'),
  ('Avelumemab', 'O3_0390030_00006', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0390030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.SysTherCycleDrugsImmuno.SysTherCycleDrugsImmuno_DrugName', 'SysTherCycleDrugsImmuno_DrugName_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[SysTherCycleDrugsImmuno]
ALTER COLUMN [SysTherCycleDrugsImmuno_DrugName_ID] int NULL;
GO

ALTER TABLE [dbo].[SysTherCycleDrugsImmuno]
ADD FOREIGN KEY ([SysTherCycleDrugsImmuno_DrugName_ID])
REFERENCES [dbo].[SVL_SysTherCycleDrugsImmuno_DrugName]([SVL_SysTherCycleDrugsImmuno_DrugName_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_InterventionalProcedure_Type] (
    [SVL_InterventionalProcedure_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [InterventionalProcedure_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_InterventionalProcedure_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_InterventionalProcedure_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_InterventionalProcedure_Type] ([InterventionalProcedure_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Biopsy', 'O3_0400070_00001', 'NULL', 'NULL', 'NULL'),
  ('Prostatectomy', 'O3_0400070_00002', ' SCTID- 90470006', 'NCITC- C15307', 'NCIMT- C0033573'),
  ('Lymph Node Dissection', 'O3_0400070_00003', ' SCTID- 21525004', ' NCITC- C15427', 'NCIMT-_'),
  ('Metastatectomy', 'O3_0400070_00004', ' SCTID-_', 'NCITC-_', 'NCIMT-_'),
  ('GI cauterization', 'O3_0400070_00005', 'NULL', 'NULL', 'NULL'),
  ('Bladder cauterization', 'O3_0400070_00006', 'NULL', 'NULL', 'NULL'),
  ('Kyphoplasty', 'O3_0400070_00007', 'NULL', 'NULL', 'NULL'),
  ('Other bone stabilization', 'O3_0400070_00008', 'NULL', 'NULL', 'NULL'),
  ('Orchiectomy', 'O3_0400070_00009', 'NULL', 'NULL', 'NULL'),
  ('Urethral dilation', 'O3_0400070_00010', 'NULL', 'NULL', 'NULL'),
  ('Artificial urinary sphincter', 'O3_0400070_00011', 'NULL', 'NULL', 'NULL'),
  ('Suprapubic tube', 'O3_0400070_00012', 'NULL', 'NULL', 'NULL'),
  ('TURP', 'O3_0400070_00013', 'NULL', 'NULL', 'NULL'),
  ('Penile implant', 'O3_0400070_00014', 'NULL', 'NULL', 'NULL'),
  ('Hyperbaric oxygen', 'O3_0400070_00015', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0400070_00016', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.InterventionalProcedure.InterventionalProcedure_Type', 'InterventionalProcedure_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ALTER COLUMN [InterventionalProcedure_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ADD FOREIGN KEY ([InterventionalProcedure_Type_ID])
REFERENCES [dbo].[SVL_InterventionalProcedure_Type]([SVL_InterventionalProcedure_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_InterventionalProcedure_Intent] (
    [SVL_InterventionalProcedure_Intent_ID][int] IDENTITY(1,1) NOT NULL,
    [InterventionalProcedure_Intent] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_InterventionalProcedure_Intent] PRIMARY KEY CLUSTERED
    	(
      		[SVL_InterventionalProcedure_Intent_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_InterventionalProcedure_Intent] ([InterventionalProcedure_Intent], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Diagnostic', 'O3_0400080_00001', 'NULL', 'NULL', 'NULL'),
  ('Curative', 'O3_0400080_00002', 'NULL', 'NULL', 'NULL'),
  ('Prophylactic', 'O3_0400080_00003', 'NULL', 'NULL', 'NULL'),
  ('Palliative', 'O3_0400080_00004', ' SCTID- 363676003', 'NCITC- C101516', ' NCIMT- C1285530'),
  ('Functional improvement', 'O3_0400080_00005', 'NULL', 'NULL', 'NULL'),
  ('Chronic management', 'O3_0400080_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.InterventionalProcedure.InterventionalProcedure_Intent', 'InterventionalProcedure_Intent_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ALTER COLUMN [InterventionalProcedure_Intent_ID] int NULL;
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ADD FOREIGN KEY ([InterventionalProcedure_Intent_ID])
REFERENCES [dbo].[SVL_InterventionalProcedure_Intent]([SVL_InterventionalProcedure_Intent_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_InterventionalProcedure_Attribution] (
    [SVL_InterventionalProcedure_Attribution_ID][int] IDENTITY(1,1) NOT NULL,
    [InterventionalProcedure_Attribution] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_InterventionalProcedure_Attribution] PRIMARY KEY CLUSTERED
    	(
      		[SVL_InterventionalProcedure_Attribution_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_InterventionalProcedure_Attribution] ([InterventionalProcedure_Attribution], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Curative', 'O3_0400090_00001', 'NULL', 'NULL', 'NULL'),
  ('Hormonal', 'O3_0400090_00002', 'NULL', 'NULL', 'NULL'),
  ('Oncologic Palliation', 'O3_0400090_00003', 'NULL', 'NULL', 'NULL'),
  ('Therapeutic', 'O3_0400090_00004', 'NULL', 'NULL', 'NULL'),
  ('Mechanical Stabilization', 'O3_0400090_00005', 'NULL', 'NULL', 'NULL'),
  ('Iatrogenic Toxicity Management (e.g. proctoscopy with cauterization for rectal bleeding, urethral stricture dilation)', 'O3_0400090_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.InterventionalProcedure.InterventionalProcedure_Attribution', 'InterventionalProcedure_Attribution_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ALTER COLUMN [InterventionalProcedure_Attribution_ID] int NULL;
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ADD FOREIGN KEY ([InterventionalProcedure_Attribution_ID])
REFERENCES [dbo].[SVL_InterventionalProcedure_Attribution]([SVL_InterventionalProcedure_Attribution_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_InterventionalProcedure_ResidenceDuringTreatment] (
    [SVL_InterventionalProcedure_ResidenceDuringTreatment_ID][int] IDENTITY(1,1) NOT NULL,
    [InterventionalProcedure_ResidenceDuringTreatment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_InterventionalProcedure_ResidenceDuringTreatment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_InterventionalProcedure_ResidenceDuringTreatment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_InterventionalProcedure_ResidenceDuringTreatment] ([InterventionalProcedure_ResidenceDuringTreatment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Primary Residence', 'O3_0400130_00001', 'NULL', 'NULL', 'NULL'),
  ('Other Location', 'O3_0400130_00002', 'NULL', 'NULL', 'NULL'),
  ('Other Location Subsidized', 'O3_0400130_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.InterventionalProcedure.InterventionalProcedure_ResidenceDuringTreatment', 'InterventionalProcedure_ResidenceDuringTreatment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ALTER COLUMN [InterventionalProcedure_ResidenceDuringTreatment_ID] int NULL;
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ADD FOREIGN KEY ([InterventionalProcedure_ResidenceDuringTreatment_ID])
REFERENCES [dbo].[SVL_InterventionalProcedure_ResidenceDuringTreatment]([SVL_InterventionalProcedure_ResidenceDuringTreatment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod] (
    [SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod] ([InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Country', 'O3_0400150_00001', 'NULL', 'NULL', 'NULL'),
  ('State', 'O3_0400150_00002', 'NULL', 'NULL', 'NULL'),
  ('Province', 'O3_0400150_00003', 'NULL', 'NULL', 'NULL'),
  ('County', 'O3_0400150_00004', 'NULL', 'NULL', 'NULL'),
  ('City', 'O3_0400150_00005', 'NULL', 'NULL', 'NULL'),
  ('Postal Code', 'O3_0400150_00006', 'NULL', 'NULL', 'NULL'),
  ('Address', 'O3_0400150_00007', 'NULL', 'NULL', 'NULL'),
  ('GPS', 'O3_0400150_00008', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0400150_00009', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.InterventionalProcedure.InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod', 'InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ALTER COLUMN [InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ADD FOREIGN KEY ([InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod_ID])
REFERENCES [dbo].[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod]([SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDirectMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_InterventionalProcedure_DistanceToPatientDomicileDirectUnits] (
    [SVL_InterventionalProcedure_DistanceToPatientDomicileDirectUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [InterventionalProcedure_DistanceToPatientDomicileDirectUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_InterventionalProcedure_DistanceToPatientDomicileDirectUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_InterventionalProcedure_DistanceToPatientDomicileDirectUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_InterventionalProcedure_DistanceToPatientDomicileDirectUnits] ([InterventionalProcedure_DistanceToPatientDomicileDirectUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0400160_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0400160_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.InterventionalProcedure.InterventionalProcedure_DistanceToPatientDomicileDirectUnits', 'InterventionalProcedure_DistanceToPatientDomicileDirectUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ALTER COLUMN [InterventionalProcedure_DistanceToPatientDomicileDirectUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ADD FOREIGN KEY ([InterventionalProcedure_DistanceToPatientDomicileDirectUnits_ID])
REFERENCES [dbo].[SVL_InterventionalProcedure_DistanceToPatientDomicileDirectUnits]([SVL_InterventionalProcedure_DistanceToPatientDomicileDirectUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits] (
    [SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits] ([InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0400190_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0400190_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.InterventionalProcedure.InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits', 'InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ALTER COLUMN [InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[InterventionalProcedure]
ADD FOREIGN KEY ([InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
REFERENCES [dbo].[SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits]([SVL_InterventionalProcedure_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_DepartmentCategorization] (
    [SVL_PatientEncounter_DepartmentCategorization_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_DepartmentCategorization] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_DepartmentCategorization] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_DepartmentCategorization_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_DepartmentCategorization] ([PatientEncounter_DepartmentCategorization], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Radiation Oncology', 'O3_0410070_00001', 'NULL', 'NULL', 'NULL'),
  ('Medical Oncology', 'O3_0410070_00002', 'NULL', 'NULL', 'NULL'),
  ('Hematology', 'O3_0410070_00003', 'NULL', 'NULL', 'NULL'),
  ('Radiology', 'O3_0410070_00004', 'NULL', 'NULL', 'NULL'),
  ('Surgery', 'O3_0410070_00005', 'NULL', 'NULL', 'NULL'),
  ('Neurology', 'O3_0410070_00006', 'NULL', 'NULL', 'NULL'),
  ('Psychiatry', 'O3_0410070_00007', 'NULL', 'NULL', 'NULL'),
  ('Behavioral', 'O3_0410070_00008', 'NULL', 'NULL', 'NULL'),
  ('Urology', 'O3_0410070_00009', 'NULL', 'NULL', 'NULL'),
  ('Emergency Medicine', 'O3_0410070_00010', 'NULL', 'NULL', 'NULL'),
  ('Infusion Clinic', 'O3_0410070_00011', 'NULL', 'NULL', 'NULL'),
  ('Ambulatory Care', 'O3_0410070_00012', 'NULL', 'NULL', 'NULL'),
  ('Wound Care', 'O3_0410070_00013', 'NULL', 'NULL', 'NULL'),
  ('Pain Clinic', 'O3_0410070_00014', 'NULL', 'NULL', 'NULL'),
  ('Breast Care', 'O3_0410070_00015', 'NULL', 'NULL', 'NULL'),
  ('Hepatology', 'O3_0410070_00016', 'NULL', 'NULL', 'NULL'),
  ('General Medicine', 'O3_0410070_00017', 'NULL', 'NULL', 'NULL'),
  ('Ophthalmology', 'O3_0410070_00018', 'NULL', 'NULL', 'NULL'),
  ('Obstetrics', 'O3_0410070_00019', 'NULL', 'NULL', 'NULL'),
  ('Gynecology', 'O3_0410070_00020', 'NULL', 'NULL', 'NULL'),
  ('Allergy', 'O3_0410070_00021', 'NULL', 'NULL', 'NULL'),
  ('Physical Therapy', 'O3_0410070_00022', 'NULL', 'NULL', 'NULL'),
  ('Sleep Disorders', 'O3_0410070_00023', 'NULL', 'NULL', 'NULL'),
  ('Speech Pathology', 'O3_0410070_00024', 'NULL', 'NULL', 'NULL'),
  ('Pediatrics', 'O3_0410070_00025', 'NULL', 'NULL', 'NULL'),
  ('Cardiology', 'O3_0410070_00026', 'NULL', 'NULL', 'NULL'),
  ('Cardiovascular', 'O3_0410070_00027', 'NULL', 'NULL', 'NULL'),
  ('Pulmonary', 'O3_0410070_00028', 'NULL', 'NULL', 'NULL'),
  ('Genetics', 'O3_0410070_00029', 'NULL', 'NULL', 'NULL'),
  ('Rheumatology', 'O3_0410070_00030', 'NULL', 'NULL', 'NULL'),
  ('Nephrology', 'O3_0410070_00031', 'NULL', 'NULL', 'NULL'),
  ('Podiatry', 'O3_0410070_00032', 'NULL', 'NULL', 'NULL'),
  ('Sports Medicine', 'O3_0410070_00033', 'NULL', 'NULL', 'NULL'),
  ('Endocrinology', 'O3_0410070_00034', 'NULL', 'NULL', 'NULL'),
  ('Gastroenterology', 'O3_0410070_00035', 'NULL', 'NULL', 'NULL'),
  ('Gerontology', 'O3_0410070_00036', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0410070_00037', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_DepartmentCategorization', 'PatientEncounter_DepartmentCategorization_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_DepartmentCategorization_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_DepartmentCategorization_ID])
REFERENCES [dbo].[SVL_PatientEncounter_DepartmentCategorization]([SVL_PatientEncounter_DepartmentCategorization_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_Environment] (
    [SVL_PatientEncounter_Environment_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_Environment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_Environment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_Environment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_Environment] ([PatientEncounter_Environment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('In Patient', 'O3_0410080_00001', 'NULL', 'NULL', 'NULL'),
  ('Out Patient', 'O3_0410080_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_Environment', 'PatientEncounter_Environment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_Environment_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_Environment_ID])
REFERENCES [dbo].[SVL_PatientEncounter_Environment]([SVL_PatientEncounter_Environment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_Type] (
    [SVL_PatientEncounter_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_Type] ([PatientEncounter_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Office Visit', 'O3_0410090_00001', 'NULL', 'NULL', 'NULL'),
  ('Hospital Encounter', 'O3_0410090_00002', 'NULL', 'NULL', 'NULL'),
  ('Telemedicine Encounter', 'O3_0410090_00003', 'NULL', 'NULL', 'NULL'),
  ('Emergency Room Visit', 'O3_0410090_00004', 'NULL', 'NULL', 'NULL'),
  ('Home Care Visit', 'O3_0410090_00005', 'NULL', 'NULL', 'NULL'),
  ('OTV Visit', 'O3_0410090_00006', 'NULL', 'NULL', 'NULL'),
  ('Completion Visit', 'O3_0410090_00007', 'NULL', 'NULL', 'NULL'),
  ('Consultation Visit', 'O3_0410090_00008', 'NULL', 'NULL', 'NULL'),
  ('Radiation Oncology Consultation', 'O3_0410090_00009', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_Type', 'PatientEncounter_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_Type_ID])
REFERENCES [dbo].[SVL_PatientEncounter_Type]([SVL_PatientEncounter_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_Multi-SpecialtyConsults] (
    [SVL_PatientEncounter_Multi-SpecialtyConsults_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_Multi-SpecialtyConsults] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_Multi-SpecialtyConsults] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_Multi-SpecialtyConsults_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_Multi-SpecialtyConsults] ([PatientEncounter_Multi-SpecialtyConsults], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Radiation Oncology', 'O3_0410160_00001', 'NULL', 'NULL', 'NULL'),
  ('Medical Oncology', 'O3_0410160_00002', 'NULL', 'NULL', 'NULL'),
  ('Hematology', 'O3_0410160_00003', 'NULL', 'NULL', 'NULL'),
  ('Radiology', 'O3_0410160_00004', 'NULL', 'NULL', 'NULL'),
  ('Surgery', 'O3_0410160_00005', 'NULL', 'NULL', 'NULL'),
  ('Neurology', 'O3_0410160_00006', 'NULL', 'NULL', 'NULL'),
  ('Psychiatry', 'O3_0410160_00007', 'NULL', 'NULL', 'NULL'),
  ('Behavioral', 'O3_0410160_00008', 'NULL', 'NULL', 'NULL'),
  ('Urology', 'O3_0410160_00009', 'NULL', 'NULL', 'NULL'),
  ('Emergency Medicine', 'O3_0410160_00010', 'NULL', 'NULL', 'NULL'),
  ('Infusion Clinic', 'O3_0410160_00011', 'NULL', 'NULL', 'NULL'),
  ('Ambulatory Care', 'O3_0410160_00012', 'NULL', 'NULL', 'NULL'),
  ('Wound Care', 'O3_0410160_00013', 'NULL', 'NULL', 'NULL'),
  ('Pain Clinic', 'O3_0410160_00014', 'NULL', 'NULL', 'NULL'),
  ('Breast Care', 'O3_0410160_00015', 'NULL', 'NULL', 'NULL'),
  ('Hepatology', 'O3_0410160_00016', 'NULL', 'NULL', 'NULL'),
  ('General Medicine', 'O3_0410160_00017', 'NULL', 'NULL', 'NULL'),
  ('Ophthalmology', 'O3_0410160_00018', 'NULL', 'NULL', 'NULL'),
  ('Obstetrics', 'O3_0410160_00019', 'NULL', 'NULL', 'NULL'),
  ('Gynecology', 'O3_0410160_00020', 'NULL', 'NULL', 'NULL'),
  ('Allergy', 'O3_0410160_00021', 'NULL', 'NULL', 'NULL'),
  ('Physical Therapy', 'O3_0410160_00022', 'NULL', 'NULL', 'NULL'),
  ('Sleep Disorders', 'O3_0410160_00023', 'NULL', 'NULL', 'NULL'),
  ('Speech Pathology', 'O3_0410160_00024', 'NULL', 'NULL', 'NULL'),
  ('Pediatrics', 'O3_0410160_00025', 'NULL', 'NULL', 'NULL'),
  ('Cardiology', 'O3_0410160_00026', 'NULL', 'NULL', 'NULL'),
  ('Cardiovascular', 'O3_0410160_00027', 'NULL', 'NULL', 'NULL'),
  ('Pulmonary', 'O3_0410160_00028', 'NULL', 'NULL', 'NULL'),
  ('Genetics', 'O3_0410160_00029', 'NULL', 'NULL', 'NULL'),
  ('Rheumatology', 'O3_0410160_00030', 'NULL', 'NULL', 'NULL'),
  ('Nephrology', 'O3_0410160_00031', 'NULL', 'NULL', 'NULL'),
  ('Podiatry', 'O3_0410160_00032', 'NULL', 'NULL', 'NULL'),
  ('Sports Medicine', 'O3_0410160_00033', 'NULL', 'NULL', 'NULL'),
  ('Endocrinology', 'O3_0410160_00034', 'NULL', 'NULL', 'NULL'),
  ('Gastroenterology', 'O3_0410160_00035', 'NULL', 'NULL', 'NULL'),
  ('Gerontology', 'O3_0410160_00036', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_Multi-SpecialtyConsults', 'PatientEncounter_Multi-SpecialtyConsults_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_Multi-SpecialtyConsults_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_Multi-SpecialtyConsults_ID])
REFERENCES [dbo].[SVL_PatientEncounter_Multi-SpecialtyConsults]([SVL_PatientEncounter_Multi-SpecialtyConsults_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_ResidenceDuringTreatment] (
    [SVL_PatientEncounter_ResidenceDuringTreatment_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_ResidenceDuringTreatment] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_ResidenceDuringTreatment] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_ResidenceDuringTreatment_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_ResidenceDuringTreatment] ([PatientEncounter_ResidenceDuringTreatment], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Primary Residence', 'O3_0410170_00001', 'NULL', 'NULL', 'NULL'),
  ('Other Location', 'O3_0410170_00002', 'NULL', 'NULL', 'NULL'),
  ('Other Location Subsidized', 'O3_0410170_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_ResidenceDuringTreatment', 'PatientEncounter_ResidenceDuringTreatment_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_ResidenceDuringTreatment_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_ResidenceDuringTreatment_ID])
REFERENCES [dbo].[SVL_PatientEncounter_ResidenceDuringTreatment]([SVL_PatientEncounter_ResidenceDuringTreatment_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod] (
    [SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod] ([PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Country', 'O3_0410200_00001', 'NULL', 'NULL', 'NULL'),
  ('State', 'O3_0410200_00002', 'NULL', 'NULL', 'NULL'),
  ('Province', 'O3_0410200_00003', 'NULL', 'NULL', 'NULL'),
  ('County', 'O3_0410200_00004', 'NULL', 'NULL', 'NULL'),
  ('City', 'O3_0410200_00005', 'NULL', 'NULL', 'NULL'),
  ('Postal Code', 'O3_0410200_00006', 'NULL', 'NULL', 'NULL'),
  ('Address', 'O3_0410200_00007', 'NULL', 'NULL', 'NULL'),
  ('GPS', 'O3_0410200_00008', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0410200_00009', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod', 'PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod_ID])
REFERENCES [dbo].[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod]([SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDirectMethod_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_DistanceToPatientDomicileDirectUnits] (
    [SVL_PatientEncounter_DistanceToPatientDomicileDirectUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_DistanceToPatientDomicileDirectUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_DistanceToPatientDomicileDirectUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_DistanceToPatientDomicileDirectUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_DistanceToPatientDomicileDirectUnits] ([PatientEncounter_DistanceToPatientDomicileDirectUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0410210_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0410210_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_DistanceToPatientDomicileDirectUnits', 'PatientEncounter_DistanceToPatientDomicileDirectUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_DistanceToPatientDomicileDirectUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_DistanceToPatientDomicileDirectUnits_ID])
REFERENCES [dbo].[SVL_PatientEncounter_DistanceToPatientDomicileDirectUnits]([SVL_PatientEncounter_DistanceToPatientDomicileDirectUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits] (
    [SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits_ID][int] IDENTITY(1,1) NOT NULL,
    [PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits] PRIMARY KEY CLUSTERED
    	(
      		[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits] ([PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Miles', 'O3_0410240_00001', 'NULL', 'NULL', 'NULL'),
  ('Kilometers', 'O3_0410240_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.PatientEncounter.PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits', 'PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[PatientEncounter]
ALTER COLUMN [PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits_ID] int NULL;
GO

ALTER TABLE [dbo].[PatientEncounter]
ADD FOREIGN KEY ([PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
REFERENCES [dbo].[SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits]([SVL_PatientEncounter_DistanceToPatientPrimaryResidenceDrivingUnits_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_Site_Type] (
    [SVL_HCO_Site_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_Site_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_Site_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_Site_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_Site_Type] ([HCO_Site_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Imaging', 'O3_0480070_00001', 'NULL', 'NULL', 'NULL'),
  ('Nuclear Medicine', 'O3_0480070_00002', 'NULL', 'NULL', 'NULL'),
  ('Radiation Therapy', 'O3_0480070_00003', 'NULL', 'NULL', 'NULL'),
  ('Systemic Therapy', 'O3_0480070_00004', 'NULL', 'NULL', 'NULL'),
  ('Surgery', 'O3_0480070_00005', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_Site.HCO_Site_Type', 'HCO_Site_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_Site]
ALTER COLUMN [HCO_Site_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_Site]
ADD FOREIGN KEY ([HCO_Site_Type_ID])
REFERENCES [dbo].[SVL_HCO_Site_Type]([SVL_HCO_Site_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_Site_ImageStorageMethods] (
    [SVL_HCO_Site_ImageStorageMethods_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_Site_ImageStorageMethods] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_Site_ImageStorageMethods] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_Site_ImageStorageMethods_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_Site_ImageStorageMethods] ([HCO_Site_ImageStorageMethods], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('PACS', 'O3_0480080_00001', 'NULL', 'NULL', 'NULL'),
  ('Films', 'O3_0480080_00002', 'NULL', 'NULL', 'NULL'),
  ('ROIS', 'O3_0480080_00003', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0480080_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_Site.HCO_Site_ImageStorageMethods', 'HCO_Site_ImageStorageMethods_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_Site]
ALTER COLUMN [HCO_Site_ImageStorageMethods_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_Site]
ADD FOREIGN KEY ([HCO_Site_ImageStorageMethods_ID])
REFERENCES [dbo].[SVL_HCO_Site_ImageStorageMethods]([SVL_HCO_Site_ImageStorageMethods_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCount_TimePointType] (
    [SVL_HCO_SiteCount_TimePointType_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCount_TimePointType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCount_TimePointType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCount_TimePointType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCount_TimePointType] ([HCO_SiteCount_TimePointType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Calendar Year', 'O3_0490030_00001', 'NULL', 'NULL', 'NULL'),
  ('Fiscal Year', 'O3_0490030_00002', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0490030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCount.HCO_SiteCount_TimePointType', 'HCO_SiteCount_TimePointType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ALTER COLUMN [HCO_SiteCount_TimePointType_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ADD FOREIGN KEY ([HCO_SiteCount_TimePointType_ID])
REFERENCES [dbo].[SVL_HCO_SiteCount_TimePointType]([SVL_HCO_SiteCount_TimePointType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCount_TimePointValue] (
    [SVL_HCO_SiteCount_TimePointValue_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCount_TimePointValue] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCount_TimePointValue] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCount_TimePointValue_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCount_TimePointValue] ([HCO_SiteCount_TimePointValue], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0490040_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCount.HCO_SiteCount_TimePointValue', 'HCO_SiteCount_TimePointValue_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ALTER COLUMN [HCO_SiteCount_TimePointValue_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ADD FOREIGN KEY ([HCO_SiteCount_TimePointValue_ID])
REFERENCES [dbo].[SVL_HCO_SiteCount_TimePointValue]([SVL_HCO_SiteCount_TimePointValue_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCount_Type] (
    [SVL_HCO_SiteCount_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCount_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCount_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCount_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCount_Type] ([HCO_SiteCount_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Number of Patients', 'O3_0490050_00001', 'NULL', 'NULL', 'NULL'),
  ('Number of Radiation Therapy Treatment Courses', 'O3_0490050_00002', 'NULL', 'NULL', 'NULL'),
  ('Number of Radiation Therapy Treatment Sessions', 'O3_0490050_00003', 'NULL', 'NULL', 'NULL'),
  ('Number of External Beam Treatment Sessions', 'O3_0490050_00004', 'NULL', 'NULL', 'NULL'),
  ('Number of Hadron Beam Treatment Sessions', 'O3_0490050_00005', 'NULL', 'NULL', 'NULL'),
  ('Number of HDR Brachytherapy Treatment Sessions', 'O3_0490050_00006', 'NULL', 'NULL', 'NULL'),
  ('Number of LDR Brachytherapy Treatment Sessions', 'O3_0490050_00007', 'NULL', 'NULL', 'NULL'),
  ('Number of Systemic Brachytherapy Treatment Sessions', 'O3_0490050_00008', 'NULL', 'NULL', 'NULL'),
  ('Number of Imaging Exams', 'O3_0490050_00009', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0490050_00010', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCount.HCO_SiteCount_Type', 'HCO_SiteCount_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ALTER COLUMN [HCO_SiteCount_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ADD FOREIGN KEY ([HCO_SiteCount_Type_ID])
REFERENCES [dbo].[SVL_HCO_SiteCount_Type]([SVL_HCO_SiteCount_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCount_Value] (
    [SVL_HCO_SiteCount_Value_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCount_Value] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCount_Value] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCount_Value_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCount_Value] ([HCO_SiteCount_Value], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0490060_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCount.HCO_SiteCount_Value', 'HCO_SiteCount_Value_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ALTER COLUMN [HCO_SiteCount_Value_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCount]
ADD FOREIGN KEY ([HCO_SiteCount_Value_ID])
REFERENCES [dbo].[SVL_HCO_SiteCount_Value]([SVL_HCO_SiteCount_Value_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitCount_TimePointType] (
    [SVL_HCO_SiteUnitCount_TimePointType_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitCount_TimePointType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitCount_TimePointType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitCount_TimePointType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitCount_TimePointType] ([HCO_SiteUnitCount_TimePointType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Calendar Year', 'O3_0500030_00001', 'NULL', 'NULL', 'NULL'),
  ('Fiscal Year', 'O3_0500030_00002', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0500030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitCount.HCO_SiteUnitCount_TimePointType', 'HCO_SiteUnitCount_TimePointType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ALTER COLUMN [HCO_SiteUnitCount_TimePointType_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ADD FOREIGN KEY ([HCO_SiteUnitCount_TimePointType_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitCount_TimePointType]([SVL_HCO_SiteUnitCount_TimePointType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitCount_TimePointValue] (
    [SVL_HCO_SiteUnitCount_TimePointValue_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitCount_TimePointValue] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitCount_TimePointValue] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitCount_TimePointValue_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitCount_TimePointValue] ([HCO_SiteUnitCount_TimePointValue], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0500040_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitCount.HCO_SiteUnitCount_TimePointValue', 'HCO_SiteUnitCount_TimePointValue_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ALTER COLUMN [HCO_SiteUnitCount_TimePointValue_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ADD FOREIGN KEY ([HCO_SiteUnitCount_TimePointValue_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitCount_TimePointValue]([SVL_HCO_SiteUnitCount_TimePointValue_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitCount_Type] (
    [SVL_HCO_SiteUnitCount_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitCount_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitCount_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitCount_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitCount_Type] ([HCO_SiteUnitCount_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Linear Accelerator Treatment Units', 'O3_0500050_00001', 'NULL', 'NULL', 'NULL'),
  ('Cobalt Therapy Units', 'O3_0500050_00002', 'NULL', 'NULL', 'NULL'),
  ('HDR Units', 'O3_0500050_00003', 'NULL', 'NULL', 'NULL'),
  ('CT Simulators', 'O3_0500050_00004', 'NULL', 'NULL', 'NULL'),
  ('MR Simulators', 'O3_0500050_00005', 'NULL', 'NULL', 'NULL'),
  ('kV Simulators', 'O3_0500050_00006', 'NULL', 'NULL', 'NULL'),
  ('PETCT Scanners', 'O3_0500050_00007', 'NULL', 'NULL', 'NULL'),
  ('SPECT Scanners', 'O3_0500050_00008', 'NULL', 'NULL', 'NULL'),
  ('CT Scanners', 'O3_0500050_00009', 'NULL', 'NULL', 'NULL'),
  ('Mamography Units', 'O3_0500050_00010', 'NULL', 'NULL', 'NULL'),
  ('Ultrasound Units', 'O3_0500050_00011', 'NULL', 'NULL', 'NULL'),
  ('Fluoro Units', 'O3_0500050_00012', 'NULL', 'NULL', 'NULL'),
  ('C-Arm Units', 'O3_0500050_00013', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0500050_00014', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitCount.HCO_SiteUnitCount_Type', 'HCO_SiteUnitCount_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ALTER COLUMN [HCO_SiteUnitCount_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ADD FOREIGN KEY ([HCO_SiteUnitCount_Type_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitCount_Type]([SVL_HCO_SiteUnitCount_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitCount_Value] (
    [SVL_HCO_SiteUnitCount_Value_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitCount_Value] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitCount_Value] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitCount_Value_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitCount_Value] ([HCO_SiteUnitCount_Value], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0500060_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitCount.HCO_SiteUnitCount_Value', 'HCO_SiteUnitCount_Value_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ALTER COLUMN [HCO_SiteUnitCount_Value_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitCount]
ADD FOREIGN KEY ([HCO_SiteUnitCount_Value_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitCount_Value]([SVL_HCO_SiteUnitCount_Value_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitUtilizationCount_NameOfUnit] (
    [SVL_HCO_SiteUnitUtilizationCount_NameOfUnit_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitUtilizationCount_NameOfUnit] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitUtilizationCount_NameOfUnit] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitUtilizationCount_NameOfUnit_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitUtilizationCount_NameOfUnit] ([HCO_SiteUnitUtilizationCount_NameOfUnit], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0510030_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitUtilizationCount.HCO_SiteUnitUtilizationCount_NameOfUnit', 'HCO_SiteUnitUtilizationCount_NameOfUnit_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ALTER COLUMN [HCO_SiteUnitUtilizationCount_NameOfUnit_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ADD FOREIGN KEY ([HCO_SiteUnitUtilizationCount_NameOfUnit_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitUtilizationCount_NameOfUnit]([SVL_HCO_SiteUnitUtilizationCount_NameOfUnit_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitUtilizationCount_TimePointType] (
    [SVL_HCO_SiteUnitUtilizationCount_TimePointType_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitUtilizationCount_TimePointType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitUtilizationCount_TimePointType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitUtilizationCount_TimePointType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitUtilizationCount_TimePointType] ([HCO_SiteUnitUtilizationCount_TimePointType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Calendar Year', 'O3_0510040_00001', 'NULL', 'NULL', 'NULL'),
  ('Fiscal Year', 'O3_0510040_00002', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0510040_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitUtilizationCount.HCO_SiteUnitUtilizationCount_TimePointType', 'HCO_SiteUnitUtilizationCount_TimePointType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ALTER COLUMN [HCO_SiteUnitUtilizationCount_TimePointType_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ADD FOREIGN KEY ([HCO_SiteUnitUtilizationCount_TimePointType_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitUtilizationCount_TimePointType]([SVL_HCO_SiteUnitUtilizationCount_TimePointType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitUtilizationCount_TimePointValue] (
    [SVL_HCO_SiteUnitUtilizationCount_TimePointValue_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitUtilizationCount_TimePointValue] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitUtilizationCount_TimePointValue] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitUtilizationCount_TimePointValue_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitUtilizationCount_TimePointValue] ([HCO_SiteUnitUtilizationCount_TimePointValue], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0510050_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitUtilizationCount.HCO_SiteUnitUtilizationCount_TimePointValue', 'HCO_SiteUnitUtilizationCount_TimePointValue_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ALTER COLUMN [HCO_SiteUnitUtilizationCount_TimePointValue_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ADD FOREIGN KEY ([HCO_SiteUnitUtilizationCount_TimePointValue_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitUtilizationCount_TimePointValue]([SVL_HCO_SiteUnitUtilizationCount_TimePointValue_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitUtilizationCount_Type] (
    [SVL_HCO_SiteUnitUtilizationCount_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitUtilizationCount_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitUtilizationCount_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitUtilizationCount_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitUtilizationCount_Type] ([HCO_SiteUnitUtilizationCount_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Number of Patients', 'O3_0510060_00001', 'NULL', 'NULL', 'NULL'),
  ('Number of Courses', 'O3_0510060_00002', 'NULL', 'NULL', 'NULL'),
  ('Number of Sessions', 'O3_0510060_00003', 'NULL', 'NULL', 'NULL'),
  ('Number of Procedures', 'O3_0510060_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitUtilizationCount.HCO_SiteUnitUtilizationCount_Type', 'HCO_SiteUnitUtilizationCount_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ALTER COLUMN [HCO_SiteUnitUtilizationCount_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ADD FOREIGN KEY ([HCO_SiteUnitUtilizationCount_Type_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitUtilizationCount_Type]([SVL_HCO_SiteUnitUtilizationCount_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteUnitUtilizationCount_Value] (
    [SVL_HCO_SiteUnitUtilizationCount_Value_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteUnitUtilizationCount_Value] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteUnitUtilizationCount_Value] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteUnitUtilizationCount_Value_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteUnitUtilizationCount_Value] ([HCO_SiteUnitUtilizationCount_Value], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0510070_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteUnitUtilizationCount.HCO_SiteUnitUtilizationCount_Value', 'HCO_SiteUnitUtilizationCount_Value_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ALTER COLUMN [HCO_SiteUnitUtilizationCount_Value_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteUnitUtilizationCount]
ADD FOREIGN KEY ([HCO_SiteUnitUtilizationCount_Value_ID])
REFERENCES [dbo].[SVL_HCO_SiteUnitUtilizationCount_Value]([SVL_HCO_SiteUnitUtilizationCount_Value_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCapabilities_TimePointType] (
    [SVL_HCO_SiteCapabilities_TimePointType_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCapabilities_TimePointType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCapabilities_TimePointType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCapabilities_TimePointType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCapabilities_TimePointType] ([HCO_SiteCapabilities_TimePointType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Calendar Year', 'O3_0520030_00001', 'NULL', 'NULL', 'NULL'),
  ('Fiscal Year', 'O3_0520030_00002', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0520030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCapabilities.HCO_SiteCapabilities_TimePointType', 'HCO_SiteCapabilities_TimePointType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ALTER COLUMN [HCO_SiteCapabilities_TimePointType_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ADD FOREIGN KEY ([HCO_SiteCapabilities_TimePointType_ID])
REFERENCES [dbo].[SVL_HCO_SiteCapabilities_TimePointType]([SVL_HCO_SiteCapabilities_TimePointType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCapabilities_TimePointValue] (
    [SVL_HCO_SiteCapabilities_TimePointValue_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCapabilities_TimePointValue] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCapabilities_TimePointValue] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCapabilities_TimePointValue_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCapabilities_TimePointValue] ([HCO_SiteCapabilities_TimePointValue], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0520040_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCapabilities.HCO_SiteCapabilities_TimePointValue', 'HCO_SiteCapabilities_TimePointValue_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ALTER COLUMN [HCO_SiteCapabilities_TimePointValue_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ADD FOREIGN KEY ([HCO_SiteCapabilities_TimePointValue_ID])
REFERENCES [dbo].[SVL_HCO_SiteCapabilities_TimePointValue]([SVL_HCO_SiteCapabilities_TimePointValue_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCapabilities_TPSAvailable] (
    [SVL_HCO_SiteCapabilities_TPSAvailable_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCapabilities_TPSAvailable] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCapabilities_TPSAvailable] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCapabilities_TPSAvailable_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCapabilities_TPSAvailable] ([HCO_SiteCapabilities_TPSAvailable], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('2D', 'O3_0520050_00001', 'NULL', 'NULL', 'NULL'),
  ('3D', 'O3_0520050_00002', 'NULL', 'NULL', 'NULL'),
  ('IMRT', 'O3_0520050_00003', 'NULL', 'NULL', 'NULL'),
  ('VMAT', 'O3_0520050_00004', 'NULL', 'NULL', 'NULL'),
  ('Hadrons', 'O3_0520050_00005', 'NULL', 'NULL', 'NULL'),
  ('Brachytherapy HDR', 'O3_0520050_00006', 'NULL', 'NULL', 'NULL'),
  ('Brachytherapy LDR', 'O3_0520050_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCapabilities.HCO_SiteCapabilities_TPSAvailable', 'HCO_SiteCapabilities_TPSAvailable_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ALTER COLUMN [HCO_SiteCapabilities_TPSAvailable_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ADD FOREIGN KEY ([HCO_SiteCapabilities_TPSAvailable_ID])
REFERENCES [dbo].[SVL_HCO_SiteCapabilities_TPSAvailable]([SVL_HCO_SiteCapabilities_TPSAvailable_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCapabilities_TPSUsed] (
    [SVL_HCO_SiteCapabilities_TPSUsed_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCapabilities_TPSUsed] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCapabilities_TPSUsed] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCapabilities_TPSUsed_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCapabilities_TPSUsed] ([HCO_SiteCapabilities_TPSUsed], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('2D', 'O3_0520060_00001', 'NULL', 'NULL', 'NULL'),
  ('3D', 'O3_0520060_00002', 'NULL', 'NULL', 'NULL'),
  ('IMRT', 'O3_0520060_00003', 'NULL', 'NULL', 'NULL'),
  ('VMAT', 'O3_0520060_00004', 'NULL', 'NULL', 'NULL'),
  ('Hadrons', 'O3_0520060_00005', 'NULL', 'NULL', 'NULL'),
  ('Brachytherapy HDR', 'O3_0520060_00006', 'NULL', 'NULL', 'NULL'),
  ('Brachytherapy LDR', 'O3_0520060_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCapabilities.HCO_SiteCapabilities_TPSUsed', 'HCO_SiteCapabilities_TPSUsed_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ALTER COLUMN [HCO_SiteCapabilities_TPSUsed_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ADD FOREIGN KEY ([HCO_SiteCapabilities_TPSUsed_ID])
REFERENCES [dbo].[SVL_HCO_SiteCapabilities_TPSUsed]([SVL_HCO_SiteCapabilities_TPSUsed_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteCapabilities_TPSSupport] (
    [SVL_HCO_SiteCapabilities_TPSSupport_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteCapabilities_TPSSupport] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteCapabilities_TPSSupport] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteCapabilities_TPSSupport_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteCapabilities_TPSSupport] ([HCO_SiteCapabilities_TPSSupport], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Local', 'O3_0520070_00001', 'NULL', 'NULL', 'NULL'),
  ('Centralized within Organization', 'O3_0520070_00002', 'NULL', 'NULL', 'NULL'),
  ('Centralized with 3D Party Vendor', 'O3_0520070_00003', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0520070_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteCapabilities.HCO_SiteCapabilities_TPSSupport', 'HCO_SiteCapabilities_TPSSupport_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ALTER COLUMN [HCO_SiteCapabilities_TPSSupport_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteCapabilities]
ADD FOREIGN KEY ([HCO_SiteCapabilities_TPSSupport_ID])
REFERENCES [dbo].[SVL_HCO_SiteCapabilities_TPSSupport]([SVL_HCO_SiteCapabilities_TPSSupport_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteStaff_TimePointType] (
    [SVL_HCO_SiteStaff_TimePointType_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteStaff_TimePointType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteStaff_TimePointType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteStaff_TimePointType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteStaff_TimePointType] ([HCO_SiteStaff_TimePointType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Calendar Year', 'O3_0530030_00001', 'NULL', 'NULL', 'NULL'),
  ('Fiscal Year', 'O3_0530030_00002', 'NULL', 'NULL', 'NULL'),
  ('(+) Other', 'O3_0530030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteStaff.HCO_SiteStaff_TimePointType', 'HCO_SiteStaff_TimePointType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ALTER COLUMN [HCO_SiteStaff_TimePointType_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ADD FOREIGN KEY ([HCO_SiteStaff_TimePointType_ID])
REFERENCES [dbo].[SVL_HCO_SiteStaff_TimePointType]([SVL_HCO_SiteStaff_TimePointType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteStaff_TimePointValue] (
    [SVL_HCO_SiteStaff_TimePointValue_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteStaff_TimePointValue] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteStaff_TimePointValue] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteStaff_TimePointValue_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteStaff_TimePointValue] ([HCO_SiteStaff_TimePointValue], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0530040_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteStaff.HCO_SiteStaff_TimePointValue', 'HCO_SiteStaff_TimePointValue_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ALTER COLUMN [HCO_SiteStaff_TimePointValue_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ADD FOREIGN KEY ([HCO_SiteStaff_TimePointValue_ID])
REFERENCES [dbo].[SVL_HCO_SiteStaff_TimePointValue]([SVL_HCO_SiteStaff_TimePointValue_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteStaff_Type] (
    [SVL_HCO_SiteStaff_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteStaff_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteStaff_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteStaff_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteStaff_Type] ([HCO_SiteStaff_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Physician-Radiation Therapy', 'O3_0530060_00001', 'NULL', 'NULL', 'NULL'),
  ('Physician-Radiology', 'O3_0530060_00002', 'NULL', 'NULL', 'NULL'),
  ('Physician-Nuclear Medicine', 'O3_0530060_00003', 'NULL', 'NULL', 'NULL'),
  ('Nurse-Radiation Therapy', 'O3_0530060_00004', 'NULL', 'NULL', 'NULL'),
  ('Nurse-Imaging', 'O3_0530060_00005', 'NULL', 'NULL', 'NULL'),
  ('Nurse-Nuclear Medicine', 'O3_0530060_00006', 'NULL', 'NULL', 'NULL'),
  ('Medical Physicist-Radiation Therapy', 'O3_0530060_00007', 'NULL', 'NULL', 'NULL'),
  ('Medical Physicist-Imaging', 'O3_0530060_00008', 'NULL', 'NULL', 'NULL'),
  ('Medical Physicist-Nuclear Medicine', 'O3_0530060_00009', 'NULL', 'NULL', 'NULL'),
  ('Dosimetrist-Radiation Therapy', 'O3_0530060_00010', 'NULL', 'NULL', 'NULL'),
  ('Radiation Therapist - Radiation Therapy', 'O3_0530060_00011', 'NULL', 'NULL', 'NULL'),
  ('Imaging Technologist - Imagina', 'O3_0530060_00012', 'NULL', 'NULL', 'NULL'),
  ('Nuclear Medicine Technologist - Nuclear Medicine', 'O3_0530060_00013', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteStaff.HCO_SiteStaff_Type', 'HCO_SiteStaff_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ALTER COLUMN [HCO_SiteStaff_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ADD FOREIGN KEY ([HCO_SiteStaff_Type_ID])
REFERENCES [dbo].[SVL_HCO_SiteStaff_Type]([SVL_HCO_SiteStaff_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteStaff_Subspecialization] (
    [SVL_HCO_SiteStaff_Subspecialization_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteStaff_Subspecialization] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteStaff_Subspecialization] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteStaff_Subspecialization_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteStaff_Subspecialization] ([HCO_SiteStaff_Subspecialization], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('ABR Board categorizations', 'O3_0530080_00001', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0530080_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteStaff.HCO_SiteStaff_Subspecialization', 'HCO_SiteStaff_Subspecialization_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ALTER COLUMN [HCO_SiteStaff_Subspecialization_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ADD FOREIGN KEY ([HCO_SiteStaff_Subspecialization_ID])
REFERENCES [dbo].[SVL_HCO_SiteStaff_Subspecialization]([SVL_HCO_SiteStaff_Subspecialization_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteStaff_Qualification] (
    [SVL_HCO_SiteStaff_Qualification_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteStaff_Qualification] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteStaff_Qualification] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteStaff_Qualification_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteStaff_Qualification] ([HCO_SiteStaff_Qualification], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Board Certification', 'O3_0530090_00001', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0530090_00002', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteStaff.HCO_SiteStaff_Qualification', 'HCO_SiteStaff_Qualification_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ALTER COLUMN [HCO_SiteStaff_Qualification_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ADD FOREIGN KEY ([HCO_SiteStaff_Qualification_ID])
REFERENCES [dbo].[SVL_HCO_SiteStaff_Qualification]([SVL_HCO_SiteStaff_Qualification_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteStaff_ClinRoles] (
    [SVL_HCO_SiteStaff_ClinRoles_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteStaff_ClinRoles] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteStaff_ClinRoles] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteStaff_ClinRoles_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteStaff_ClinRoles] ([HCO_SiteStaff_ClinRoles], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Physician', 'O3_0530110_00001', 'NULL', 'NULL', 'NULL'),
  ('Medical Physicist', 'O3_0530110_00002', 'NULL', 'NULL', 'NULL'),
  ('Treatment Planning', 'O3_0530110_00003', 'NULL', 'NULL', 'NULL'),
  ('Radiation Therapy Treatment Delivery', 'O3_0530110_00004', 'NULL', 'NULL', 'NULL'),
  ('Imaging Operation Therapist', 'O3_0530110_00005', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0530110_00006', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteStaff.HCO_SiteStaff_ClinRoles', 'HCO_SiteStaff_ClinRoles_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ALTER COLUMN [HCO_SiteStaff_ClinRoles_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ADD FOREIGN KEY ([HCO_SiteStaff_ClinRoles_ID])
REFERENCES [dbo].[SVL_HCO_SiteStaff_ClinRoles]([SVL_HCO_SiteStaff_ClinRoles_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteStaff_EmployerCat] (
    [SVL_HCO_SiteStaff_EmployerCat_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteStaff_EmployerCat] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteStaff_EmployerCat] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteStaff_EmployerCat_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteStaff_EmployerCat] ([HCO_SiteStaff_EmployerCat], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Site', 'O3_0530120_00001', 'NULL', 'NULL', 'NULL'),
  ('3D Party Vendor', 'O3_0530120_00002', 'NULL', 'NULL', 'NULL'),
  ('Government', 'O3_0530120_00003', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0530120_00004', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteStaff.HCO_SiteStaff_EmployerCat', 'HCO_SiteStaff_EmployerCat_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ALTER COLUMN [HCO_SiteStaff_EmployerCat_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteStaff]
ADD FOREIGN KEY ([HCO_SiteStaff_EmployerCat_ID])
REFERENCES [dbo].[SVL_HCO_SiteStaff_EmployerCat]([SVL_HCO_SiteStaff_EmployerCat_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteImgTrtUnitInfo_TimePointType] (
    [SVL_HCO_SiteImgTrtUnitInfo_TimePointType_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteImgTrtUnitInfo_TimePointType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteImgTrtUnitInfo_TimePointType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteImgTrtUnitInfo_TimePointType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteImgTrtUnitInfo_TimePointType] ([HCO_SiteImgTrtUnitInfo_TimePointType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Calendar Year', 'O3_0540030_00001', 'NULL', 'NULL', 'NULL'),
  ('Fiscal Year', 'O3_0540030_00002', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0540030_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteImgTrtUnitInfo.HCO_SiteImgTrtUnitInfo_TimePointType', 'HCO_SiteImgTrtUnitInfo_TimePointType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ALTER COLUMN [HCO_SiteImgTrtUnitInfo_TimePointType_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ADD FOREIGN KEY ([HCO_SiteImgTrtUnitInfo_TimePointType_ID])
REFERENCES [dbo].[SVL_HCO_SiteImgTrtUnitInfo_TimePointType]([SVL_HCO_SiteImgTrtUnitInfo_TimePointType_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteImgTrtUnitInfo_TimePointValue] (
    [SVL_HCO_SiteImgTrtUnitInfo_TimePointValue_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteImgTrtUnitInfo_TimePointValue] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteImgTrtUnitInfo_TimePointValue] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteImgTrtUnitInfo_TimePointValue_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteImgTrtUnitInfo_TimePointValue] ([HCO_SiteImgTrtUnitInfo_TimePointValue], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('None', 'O3_0540040_00001', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteImgTrtUnitInfo.HCO_SiteImgTrtUnitInfo_TimePointValue', 'HCO_SiteImgTrtUnitInfo_TimePointValue_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ALTER COLUMN [HCO_SiteImgTrtUnitInfo_TimePointValue_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ADD FOREIGN KEY ([HCO_SiteImgTrtUnitInfo_TimePointValue_ID])
REFERENCES [dbo].[SVL_HCO_SiteImgTrtUnitInfo_TimePointValue]([SVL_HCO_SiteImgTrtUnitInfo_TimePointValue_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteImgTrtUnitInfo_Type] (
    [SVL_HCO_SiteImgTrtUnitInfo_Type_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteImgTrtUnitInfo_Type] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteImgTrtUnitInfo_Type] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteImgTrtUnitInfo_Type_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteImgTrtUnitInfo_Type] ([HCO_SiteImgTrtUnitInfo_Type], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Linear Accelerator', 'O3_0540060_00001', 'NULL', 'NULL', 'NULL'),
  ('Cobalt Unit', 'O3_0540060_00002', 'NULL', 'NULL', 'NULL'),
  ('HDR Unit', 'O3_0540060_00003', 'NULL', 'NULL', 'NULL'),
  ('Proton Therapy Unit', 'O3_0540060_00004', 'NULL', 'NULL', 'NULL'),
  ('Cobalt Therapy Unit', 'O3_0540060_00005', 'NULL', 'NULL', 'NULL'),
  ('Neutron Therapy Unit', 'O3_0540060_00006', 'NULL', 'NULL', 'NULL'),
  ('CT Simulator', 'O3_0540060_00007', 'NULL', 'NULL', 'NULL'),
  ('MR Simulator', 'O3_0540060_00008', 'NULL', 'NULL', 'NULL'),
  ('kV Simulator', 'O3_0540060_00009', 'NULL', 'NULL', 'NULL'),
  ('CT Scanner', 'O3_0540060_00010', 'NULL', 'NULL', 'NULL'),
  ('MR Scanner', 'O3_0540060_00011', 'NULL', 'NULL', 'NULL'),
  ('PETCT Scanner', 'O3_0540060_00012', 'NULL', 'NULL', 'NULL'),
  ('SPECT Scanner', 'O3_0540060_00013', 'NULL', 'NULL', 'NULL'),
  ('Mammography Unit', 'O3_0540060_00014', 'NULL', 'NULL', 'NULL'),
  ('Ultrasound Unit', 'O3_0540060_00015', 'NULL', 'NULL', 'NULL'),
  ('Fluro Unit', 'O3_0540060_00016', 'NULL', 'NULL', 'NULL'),
  ('C-Arm Unit', 'O3_0540060_00017', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0540060_00018', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteImgTrtUnitInfo.HCO_SiteImgTrtUnitInfo_Type', 'HCO_SiteImgTrtUnitInfo_Type_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ALTER COLUMN [HCO_SiteImgTrtUnitInfo_Type_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ADD FOREIGN KEY ([HCO_SiteImgTrtUnitInfo_Type_ID])
REFERENCES [dbo].[SVL_HCO_SiteImgTrtUnitInfo_Type]([SVL_HCO_SiteImgTrtUnitInfo_Type_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteImgTrtUnitInfo_PMISchedulePlan] (
    [SVL_HCO_SiteImgTrtUnitInfo_PMISchedulePlan_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteImgTrtUnitInfo_PMISchedulePlan] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteImgTrtUnitInfo_PMISchedulePlan] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteImgTrtUnitInfo_PMISchedulePlan_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteImgTrtUnitInfo_PMISchedulePlan] ([HCO_SiteImgTrtUnitInfo_PMISchedulePlan], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Vendor Recommended Maintenance Plan-By Vendor', 'O3_0540130_00001', 'NULL', 'NULL', 'NULL'),
  ('Vendor Recommended Maintenance Plan-By Site', 'O3_0540130_00002', 'NULL', 'NULL', 'NULL'),
  ('Vendor Recommended Maintenance Plan-By 3rd Party', 'O3_0540130_00003', 'NULL', 'NULL', 'NULL'),
  ('Alternative Maintenance Plan- By Vendor', 'O3_0540130_00004', 'NULL', 'NULL', 'NULL'),
  ('Alternative Maintenance Plan-By Site', 'O3_0540130_00005', 'NULL', 'NULL', 'NULL'),
  ('Alternative Maintenance Plan-By 3rd Party', 'O3_0540130_00006', 'NULL', 'NULL', 'NULL'),
  ('(+Other)', 'O3_0540130_00007', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteImgTrtUnitInfo.HCO_SiteImgTrtUnitInfo_PMISchedulePlan', 'HCO_SiteImgTrtUnitInfo_PMISchedulePlan_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ALTER COLUMN [HCO_SiteImgTrtUnitInfo_PMISchedulePlan_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ADD FOREIGN KEY ([HCO_SiteImgTrtUnitInfo_PMISchedulePlan_ID])
REFERENCES [dbo].[SVL_HCO_SiteImgTrtUnitInfo_PMISchedulePlan]([SVL_HCO_SiteImgTrtUnitInfo_PMISchedulePlan_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_HCO_SiteImgTrtUnitInfo_Capabilities] (
    [SVL_HCO_SiteImgTrtUnitInfo_Capabilities_ID][int] IDENTITY(1,1) NOT NULL,
    [HCO_SiteImgTrtUnitInfo_Capabilities] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_HCO_SiteImgTrtUnitInfo_Capabilities] PRIMARY KEY CLUSTERED
    	(
      		[SVL_HCO_SiteImgTrtUnitInfo_Capabilities_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_HCO_SiteImgTrtUnitInfo_Capabilities] ([HCO_SiteImgTrtUnitInfo_Capabilities], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('Therapy-Photons', 'O3_0540150_00001', 'NULL', 'NULL', 'NULL'),
  ('Therapy-Brachy', 'O3_0540150_00002', 'NULL', 'NULL', 'NULL'),
  ('Therapy-Electrons', 'O3_0540150_00003', 'NULL', 'NULL', 'NULL'),
  ('Therapy-Protons', 'O3_0540150_00004', 'NULL', 'NULL', 'NULL'),
  ('Therapy-Carbon', 'O3_0540150_00005', 'NULL', 'NULL', 'NULL'),
  ('Therapy-Neutrons', 'O3_0540150_00006', 'NULL', 'NULL', 'NULL'),
  ('Therapy-IGRT', 'O3_0540150_00007', 'NULL', 'NULL', 'NULL'),
  ('Therapy-6DOF', 'O3_0540150_00008', 'NULL', 'NULL', 'NULL'),
  ('Therapy-IMRT', 'O3_0540150_00009', 'NULL', 'NULL', 'NULL'),
  ('Therapy-VMAT', 'O3_0540150_00010', 'NULL', 'NULL', 'NULL'),
  ('Imaging-Dual Energy CT', 'O3_0540150_00011', 'NULL', 'NULL', 'NULL'),
  ('(+ Other)', 'O3_0540150_00012', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.HCO_SiteImgTrtUnitInfo.HCO_SiteImgTrtUnitInfo_Capabilities', 'HCO_SiteImgTrtUnitInfo_Capabilities_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ALTER COLUMN [HCO_SiteImgTrtUnitInfo_Capabilities_ID] int NULL;
GO

ALTER TABLE [dbo].[HCO_SiteImgTrtUnitInfo]
ADD FOREIGN KEY ([HCO_SiteImgTrtUnitInfo_Capabilities_ID])
REFERENCES [dbo].[SVL_HCO_SiteImgTrtUnitInfo_Capabilities]([SVL_HCO_SiteImgTrtUnitInfo_Capabilities_ID])
GO

/* ***************************** */

CREATE TABLE [dbo].[SVL_O3Relationship_RelationshipType] (
    [SVL_O3Relationship_RelationshipType_ID][int] IDENTITY(1,1) NOT NULL,
    [O3Relationship_RelationshipType] VARCHAR(255) NOT NULL,
    [O3_Code] VARCHAR(50) NOT NULL,
    [SCTID] VARCHAR(50),
    [NCITC] VARCHAR(50),
    [NCIMT] VARCHAR(50),
    CONSTRAINT[PK_O3Relationship_RelationshipType] PRIMARY KEY CLUSTERED
    	(
      		[SVL_O3Relationship_RelationshipType_ID] ASC
    	) WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON[PRIMARY]
  	) ON[PRIMARY]
GO

INSERT INTO [dbo].[SVL_O3Relationship_RelationshipType] ([O3Relationship_RelationshipType], O3_Code, SCTID, NCITC, NCIMT)
VALUES
  ('ChildElement-Of', 'O3_0550090_00001', 'NULL', 'NULL', 'NULL'),
  ('InstanceAssociated-with', 'O3_0550090_00002', 'NULL', 'NULL', 'NULL'),
  ('InstanceMayBeAssociated-with', 'O3_0550090_00004', 'NULL', 'NULL', 'NULL'),
  ('Other(+)', 'O3_0550090_00003', 'NULL', 'NULL', 'NULL');
GO

EXEC sp_rename 'dbo.O3Relationship.O3Relationship_RelationshipType', 'O3Relationship_RelationshipType_ID', 'COLUMN';
GO

ALTER TABLE [dbo].[O3Relationship]
ALTER COLUMN [O3Relationship_RelationshipType_ID] int NULL;
GO

ALTER TABLE [dbo].[O3Relationship]
ADD FOREIGN KEY ([O3Relationship_RelationshipType_ID])
REFERENCES [dbo].[SVL_O3Relationship_RelationshipType]([SVL_O3Relationship_RelationshipType_ID])
GO

/* ***************************** */


