initialization
initializeItems
	"Note that items added in the beginning, are more likely to be shown as an example
	for the empty query"
	DefaultItems := OrderedCollection new
		addAll: ALGSystemCommandType algertemList;
		addAll: ALGHelpType algertemList;
		addAll: ALGTestType algertemList;
		addAll: ALGCategoryType algertemList;
		addAll: ALGGlobalVariableType algertemList;
		addAll: ALGPackageType algertemList;
		addAll: ALGSettingsType algertemList;
		addAll: ALGClassType algertemList;
		addAll: ALGMethodType algertemList;
		addAll: ALGWorldMenuType algertemList;
		yourself