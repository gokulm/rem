﻿ALTER TABLE [DensAsiModule].[DensAsiFamilySocialRelationships]
    ADD CONSTRAINT [DensAsiFamilySocialRelationships_DensAsiNonResponseLkp_ProblemsBrotherSisterInLifetimeIndicator_FK] FOREIGN KEY ([ProblemsBrotherSisterInLifetimeIndicatorDensAsiNonResponseLkpKey]) REFERENCES [DensAsiModule].[DensAsiNonResponseLkp] ([DensAsiNonResponseLkpKey]) ON DELETE NO ACTION ON UPDATE NO ACTION;
