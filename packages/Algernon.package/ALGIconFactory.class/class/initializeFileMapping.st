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
		#ALGPackageType -> (self packageIcon).
		#ALGRepositoryType -> (self repositoryIcon).
		#ALGSettingsType -> (self settingsIcon).
		#ALGTestType -> (self testIcon).
		#ALGFixedWorldMenuType -> (self worldMenuIcon).
		#ALGDynamicWorldMenuType -> (self worldMenuIcon).
		#HasChildren -> (self arrowRightIcon).
		#TopResult -> (self starIcon).
	}