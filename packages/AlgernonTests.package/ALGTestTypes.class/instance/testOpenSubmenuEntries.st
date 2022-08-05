testing docking bar types
testOpenSubmenuEntries

	| flatWidgetLookName fontSizeName newFontSizeName |
	
	flatWidgetLookName := 'Flat Widget Look'.
	self runQuery: flatWidgetLookName.
	self assert: (self resultsIncludeName: flatWidgetLookName).
	
	fontSizeName := 'Increase Font Size'.
	"Item name changed in squeak v6.0"
	newFontSizeName := 'increase font size (+)'.
	self runQuery: fontSizeName.
	self assert: (
		(self resultsIncludeName: fontSizeName) or: 
		[self resultsIncludeName: newFontSizeName])