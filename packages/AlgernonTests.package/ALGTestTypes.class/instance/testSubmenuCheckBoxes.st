testing docking bar types
testSubmenuCheckBoxes

	| colorfulWindowsName colorfulWindowsInitialValue|
	
	colorfulWindowsName := 'Colorful Windows'.
	colorfulWindowsInitialValue :=  Model useColorfulWindows.
	self runQuery: colorfulWindowsName.
	self assert: (self resultsIncludeName: colorfulWindowsName).
	self doActionForItem: self items first.
	self deny: colorfulWindowsInitialValue equals: Model useColorfulWindows.
	
	Model useColorfulWindows: colorfulWindowsInitialValue
	
	