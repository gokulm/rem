
print '------------------------------------------------------------------------------------------'
print 'TedsModule_TedsEmploymentStatusLkp.sql'
print '------------------------------------------------------------------------------------------'

INSERT INTO [TedsModule].[TedsEmploymentStatusLkp] ( [TedsEmploymentStatusLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 1, current_timestamp, 1, current_timestamp, 1, 0, N'Full-time', NULL, N'FullTime', N'01', NULL, 1, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[TedsEmploymentStatusLkp] ( [TedsEmploymentStatusLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 2, current_timestamp, 1, current_timestamp, 1, 0, N'Part-time', NULL, N'PartTime', N'02', NULL, 2, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[TedsEmploymentStatusLkp] ( [TedsEmploymentStatusLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 3, current_timestamp, 1, current_timestamp, 1, 0, N'Unemployed', NULL, N'Unemployed', N'03', NULL, 3, '1/1/1900',NULL, 0, 0 )
INSERT INTO [TedsModule].[TedsEmploymentStatusLkp] ( [TedsEmploymentStatusLkpKey], [CreatedTimestamp], [CreatedBySystemAccountKey], [UpdatedTimestamp], [UpdatedBySystemAccountKey], [Version], [Name], [Description], [WellKnownName], [Code], [ShortName], [SortOrderNumber], [EffectiveStartDate], [EffectiveEndDate], [SystemOwnedIndicator], [DefaultIndicator]  ) VALUES ( 4, current_timestamp, 1, current_timestamp, 1, 0, N'Not in labor force', NULL, N'NotInLaborForce', N'04', NULL, 4, '1/1/1900',NULL, 0, 0 )