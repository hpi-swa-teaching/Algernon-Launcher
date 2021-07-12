testing world menu types
testOpenSubmenuEntries

	|flatWidgetLookName englishLanguageName|
	
	flatWidgetLookName := 'Flat Widget Look'.
	self runQuery: flatWidgetLookName.
	self assert: (self resultsIncludeName: flatWidgetLookName).
	
	"englishLanguageName := 'English (UNITED STATES)'.
	self runQuery: englishLanguageName.
	self assert: (self resultsIncludeName: englishLanguageName)."