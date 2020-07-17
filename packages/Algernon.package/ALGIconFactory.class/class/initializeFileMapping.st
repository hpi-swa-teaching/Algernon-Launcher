mapping
initializeFileMapping

	FileMapping := Dictionary newFrom: {
		#ALGSystemCommandType -> (self powerIcon).
		#ALGClassType -> (self classIcon).
		#ALGActionType -> (self methodIcon).
		#ALGMethodType -> (self methodIcon).
		#ALGCategoryType  -> (self categoryIcon).
		#ALGExpressionType -> (self expressionIcon).
		#ALGHelpType -> (self helpIcon).
		#ALGGlobalVariableType -> (self globalVariableIcon).
		#ALGMorphType -> (self morphIcon).
		#ALGWorldMenuMorphType -> (self worldMenuIcon).
		#ALGStandardToolSetMorphType -> (self worldMenuIcon).
		#ALGPackageType -> (self packageIcon).
		#ALGRepositoryType -> (self repositoryIcon).
		#ALGSettingsType -> (self settingsIcon).
		#ALGTestType -> (self testIcon).
		#HasChildren -> (self arrowRightIcon).
		#TopResult -> (self starIcon).
	}