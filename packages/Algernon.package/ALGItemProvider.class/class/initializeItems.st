initialization
initializeItems

	DefaultItems := OrderedCollection new
		addAll: ALGMethodType algertemList;
		addAll: ALGClassType algertemList;
		addAll: ALGCategoryType algertemList;
		addAll: ALGGlobalVariableType algertemList;
		addAll: ALGWorldMenuMorphType algertemList;
		addAll: ALGStandardToolSetMorphType algertemList;
		addAll: ALGPackageType algertemList;
		addAll: ALGSettingsType algertemList;
		addAll: ALGTestType algertemList;
		addAll: ALGHelpType algertemList;
		
		yourself