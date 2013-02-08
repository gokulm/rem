﻿CREATE TABLE [GpraModule].[GpraDrugAlcoholUse] (
    [GpraInterviewKey]                                                  BIGINT             NOT NULL,
    [CreatedTimestamp]                                                  DATETIMEOFFSET (7) NOT NULL,
    [UpdatedTimestamp]                                                  DATETIMEOFFSET (7) NOT NULL,
    [CreatedBySystemAccountKey]                                         BIGINT             NOT NULL,
    [UpdatedBySystemAccountKey]                                         BIGINT             NOT NULL,
    [OtherIllegalDrugsSpecificationNote]                                NVARCHAR (MAX)     NULL,
    [AnyAlcoholDayCount]                                                INT                NULL,
    [AnyAlcoholDayCountGpraNonResponseLkpKey]                           BIGINT             NULL,
    [AlcoholIntoxicationFivePlusDrinksDayCount]                         INT                NULL,
    [AlcoholIntoxicationFivePlusDrinksDayCountGpraNonResponseLkpKey]    BIGINT             NULL,
    [AlcoholIntoxicationFourOrFewerDrinksDayCount]                      INT                NULL,
    [AlcoholIntoxicationFourOrFewerDrinksDayCountGpraNonResponseLkpKey] BIGINT             NULL,
    [IllegalDrugsDayCount]                                              INT                NULL,
    [IllegalDrugsDayCountGpraNonResponseLkpKey]                         BIGINT             NULL,
    [SameDayAlcoholDrugsDayCount]                                       INT                NULL,
    [SameDayAlcoholDrugsDayCountGpraNonResponseLkpKey]                  BIGINT             NULL,
    [CocaineCrackDayCount]                                              INT                NULL,
    [CocaineCrackDayCountGpraNonResponseLkpKey]                         BIGINT             NULL,
    [CocaineCrackGpraDrugRouteLkpKey]                                   BIGINT             NULL,
    [CocaineCrackGpraDrugRouteGpraNonResponseLkpKey]                    BIGINT             NULL,
    [MarijuanaHashishDayCount]                                          INT                NULL,
    [MarijuanaHashishDayCountGpraNonResponseLkpKey]                     BIGINT             NULL,
    [MarijuanaHashishGpraDrugRouteLkpKey]                               BIGINT             NULL,
    [MarijuanaHashishGpraDrugRouteGpraNonResponseLkpKey]                BIGINT             NULL,
    [HeroinDayCount]                                                    INT                NULL,
    [HeroinDayCountGpraNonResponseLkpKey]                               BIGINT             NULL,
    [HeroinGpraDrugRouteLkpKey]                                         BIGINT             NULL,
    [HeroinGpraDrugRouteGpraNonResponseLkpKey]                          BIGINT             NULL,
    [MorphineDayCount]                                                  INT                NULL,
    [MorphineDayCountGpraNonResponseLkpKey]                             BIGINT             NULL,
    [MorphineGpraDrugRouteLkpKey]                                       BIGINT             NULL,
    [MorphineGpraDrugRouteGpraNonResponseLkpKey]                        BIGINT             NULL,
    [DiluadidDayCount]                                                  INT                NULL,
    [DiluadidDayCountGpraNonResponseLkpKey]                             BIGINT             NULL,
    [DiluadidGpraDrugRouteLkpKey]                                       BIGINT             NULL,
    [DiluadidGpraDrugRouteGpraNonResponseLkpKey]                        BIGINT             NULL,
    [DermerolDayCount]                                                  INT                NULL,
    [DermerolDayCountGpraNonResponseLkpKey]                             BIGINT             NULL,
    [DermerolGpraDrugRouteLkpKey]                                       BIGINT             NULL,
    [DermerolGpraDrugRouteGpraNonResponseLkpKey]                        BIGINT             NULL,
    [PercocetDayCount]                                                  INT                NULL,
    [PercocetDayCountGpraNonResponseLkpKey]                             BIGINT             NULL,
    [PercocetGpraDrugRouteLkpKey]                                       BIGINT             NULL,
    [PercocetGpraDrugRouteGpraNonResponseLkpKey]                        BIGINT             NULL,
    [DarvonDayCount]                                                    INT                NULL,
    [DarvonDayCountGpraNonResponseLkpKey]                               BIGINT             NULL,
    [DarvonGpraDrugRouteLkpKey]                                         BIGINT             NULL,
    [DarvonGpraDrugRouteGpraNonResponseLkpKey]                          BIGINT             NULL,
    [CodeineDayCount]                                                   INT                NULL,
    [CodeineDayCountGpraNonResponseLkpKey]                              BIGINT             NULL,
    [CodeineGpraDrugRouteLkpKey]                                        BIGINT             NULL,
    [CodeineGpraDrugRouteGpraNonResponseLkpKey]                         BIGINT             NULL,
    [TylenolDayCount]                                                   INT                NULL,
    [TylenolDayCountGpraNonResponseLkpKey]                              BIGINT             NULL,
    [TylenolGpraDrugRouteLkpKey]                                        BIGINT             NULL,
    [TylenolGpraDrugRouteGpraNonResponseLkpKey]                         BIGINT             NULL,
    [OxycontinOxycodoneDayCount]                                        INT                NULL,
    [OxycontinOxycodoneDayCountGpraNonResponseLkpKey]                   BIGINT             NULL,
    [OxycontinOxycodoneGpraDrugRouteLkpKey]                             BIGINT             NULL,
    [OxycontinOxycodoneGpraDrugRouteGpraNonResponseLkpKey]              BIGINT             NULL,
    [NonPrescriptionMethadoneDayCount]                                  INT                NULL,
    [NonPrescriptionMethadoneDayCountGpraNonResponseLkpKey]             BIGINT             NULL,
    [NonPrescriptionMethodoneGpraDrugRouteLkpKey]                       BIGINT             NULL,
    [NonPrescriptionMethodoneGpraDrugRouteGpraNonResponseLkpKey]        BIGINT             NULL,
    [HallucinogensDayCount]                                             INT                NULL,
    [HallucinogensDayCountGpraNonResponseLkpKey]                        BIGINT             NULL,
    [HallucinogensGpraDrugRouteLkpKey]                                  BIGINT             NULL,
    [HallucinogensGpraDrugRouteGpraNonResponseLkpKey]                   BIGINT             NULL,
    [MethamphetamineDayCount]                                           INT                NULL,
    [MethamphetamineDayCountGpraNonResponseLkpKey]                      BIGINT             NULL,
    [MethamphetamineGpraDrugRouteLkpKey]                                BIGINT             NULL,
    [MethamphetamineGpraDrugRouteGpraNonResponseLkpKey]                 BIGINT             NULL,
    [BenzondiazepinesDayCount]                                          INT                NULL,
    [BenzondiazepinesDayCountGpraNonResponseLkpKey]                     BIGINT             NULL,
    [BenzondiazepinesGpraDrugRouteLkpKey]                               BIGINT             NULL,
    [BenzondiazepinesGpraDrugRouteGpraNonResponseLkpKey]                BIGINT             NULL,
    [BarbituratesDayCount]                                              INT                NULL,
    [BarbituratesDayCountGpraNonResponseLkpKey]                         BIGINT             NULL,
    [BarbituratesGpraDrugRouteLkpKey]                                   BIGINT             NULL,
    [BarbituratesGpraDrugRouteGpraNonResponseLkpKey]                    BIGINT             NULL,
    [NonPrescriptionGhbDayCount]                                        INT                NULL,
    [NonPrescriptionGhbDayCountGpraNonResponseLkpKey]                   BIGINT             NULL,
    [NonPrescriptionGhbGpraDrugRouteLkpKey]                             BIGINT             NULL,
    [NonPrescriptionGhbGpraDrugRouteGpraNonResponseLkpKey]              BIGINT             NULL,
    [KetamineDayCount]                                                  INT                NULL,
    [KetamineDayCountGpraNonResponseLkpKey]                             BIGINT             NULL,
    [KetamineGpraDrugRouteLkpKey]                                       BIGINT             NULL,
    [KetamineGpraDrugRouteGpraNonResponseLkpKey]                        BIGINT             NULL,
    [TranquilizersDayCount]                                             INT                NULL,
    [TranquilizersDayCountGpraNonResponseLkpKey]                        BIGINT             NULL,
    [TranquilizersGpraDrugRouteLkpKey]                                  BIGINT             NULL,
    [TranquilizersGpraDrugRouteGpraNonResponseLkpKey]                   BIGINT             NULL,
    [InhalantsDayCount]                                                 INT                NULL,
    [InhalantsDayCountGpraNonResponseLkpKey]                            BIGINT             NULL,
    [InhalantsGpraDrugRouteLkpKey]                                      BIGINT             NULL,
    [InhalantsGpraDrugRouteGpraNonResponseLkpKey]                       BIGINT             NULL,
    [OtherIllegalDrugsDayCount]                                         INT                NULL,
    [OtherIllegalDrugsDayCountGpraNonResponseLkpKey]                    BIGINT             NULL,
    [OtherIllegalDrugsGpraDrugRouteLkpKey]                              BIGINT             NULL,
    [OtherIllegalDrugsGpraDrugRouteGpraNonResponseLkpKey]               BIGINT             NULL,
    [InjectedDrugsIndicator]                                            BIT                NULL,
    [InjectedDrugsIndicatorGpraNonResponseLkpKey]                       BIGINT             NULL,
    [InjectionGpraFrequencyOfUseOfUsedItemsLkpKey]                      BIGINT             NULL,
    [InjectionGpraFrequencyOfUseOfUsedItemsGpraNonResponseLkpKey]       BIGINT             NULL,
    PRIMARY KEY CLUSTERED ([GpraInterviewKey] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF)
);






