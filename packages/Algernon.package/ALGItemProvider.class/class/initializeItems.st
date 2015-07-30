initialization
initializeItems

	DefaultItems := OrderedCollection new
		addAll: ALGClassType algertemList;
		addAll: ALGCategoryType algertemList;
		addAll: ALGGlobalVariableType algertemList;
		addAll: ALGMorphType algertemList;
		addAll: ALGWorldMenuMorphType algertemList;
		addAll: ALGPackageType algertemList;
		addAll: ALGSettingsType algertemList;
		addAll: ALGTestType algertemList;
		yourself