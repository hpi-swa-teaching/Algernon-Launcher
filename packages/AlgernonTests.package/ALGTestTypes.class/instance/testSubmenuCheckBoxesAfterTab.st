testing docking bar types
testSubmenuCheckBoxesAfterTab

	|themesAndColorName tab colorfulWindowsName colorfulWindowsInitialValue|
	
	themesAndColorName := 'Themes & Colors'.
	tab := ALGFakeKeyboardEvent new keyString: '<tab>'.
	colorfulWindowsName := 'Colorful Windows'.
      self runQuery: themesAndColorName.
      self algInstance keyStroke: tab.
      self runQuery: colorfulWindowsName.
	self assert: (self resultsIncludeName: colorfulWindowsName).
	colorfulWindowsInitialValue :=  Model useColorfulWindows.
	self runQuery: colorfulWindowsName.
	self doActionForItem: self items first.
	self deny: colorfulWindowsInitialValue equals: Model useColorfulWindows.
	
	Model useColorfulWindows: colorfulWindowsInitialValue
	
	