testing world menu types
testTabIntoSubmenus

	|themesAndColorName tab randomCheckBoxName randomEntryName|
	
	themesAndColorName := 'Themes & Colors'.
	tab := ALGFakeKeyboardEvent new keyString: '<tab>'.
	randomCheckBoxName := 'Squeak (duller)'.
	randomEntryName := 'Set High-DPI Mode'.
      self runQuery: themesAndColorName.
      self algInstance keyStroke: tab.
	self assert: (self resultsIncludeName: randomCheckBoxName).
	self assert: (self resultsIncludeName: randomEntryName).