testing docking bar types
testOpenSubmenuEntries

	|flatWidgetLookName fontSizeName |
	
	flatWidgetLookName := 'Flat Widget Look'.
	self runQuery: flatWidgetLookName.
	self assert: (self resultsIncludeName: flatWidgetLookName).
	
	fontSizeName := 'Increase Font Size'.
	self runQuery: fontSizeName.
	self assert: (self resultsIncludeName: fontSizeName).