mapping
initializeFileMapping

	FileMapping := Dictionary newFrom: {
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
		#ALGStaticWorldMenuType -> (self worldMenuIcon).
		#ALGDynamicWorldMenuType -> (self worldMenuIcon).
		#ALGWindowType -> (self windowIcon).
		#HasChildren -> (self tabIcon).
		#TopResult -> (self starIcon).
		#NavigateBack -> (self shiftIcon).
	}