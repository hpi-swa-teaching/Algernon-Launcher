mapping
initializeFileMapping

	FileMapping := Dictionary newFrom: {
		#Class -> self classIcon.
		#Method -> self methodIcon.
		#Category  -> self categoryIcon.
		#Expression -> self expressionIcon.
		#Help -> self helpIcon.
		#GlobalVariable -> self globalVariableIcon.
		#Morph -> self morphIcon.
		#Package -> self packageIcon.
		#Repository -> self repositoryIcon.
		#Settings -> self settingsIcon.
		#Test -> self testIcon.
		#WorldMenu -> self worldMenuIcon.
		#Window -> self windowIcon.
		#HasChildren -> self tabIcon.
		#TopResult -> self starIcon.
		#NavigateBack -> self shiftIcon.
		#Tool -> self wrenchIcon.
		#WorldHelp -> self worldHelpIcon.
		#App -> self appsIcon.
		#MagicWand -> self wandIcon.
		#Project -> self projectIcon.
		#Do -> self doIcon.
		#Squeak -> self squeakIcon.
	}