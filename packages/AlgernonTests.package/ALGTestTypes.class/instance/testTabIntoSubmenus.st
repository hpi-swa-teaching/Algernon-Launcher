testing docking bar types
testTabIntoSubmenus

	| themesAndColorName tab randomCheckBoxName randomEntryName |
	
	themesAndColorName := 'Themes & Colors'.
	tab := ALGFakeKeyboardEvent new keyString: '<tab>'.
	randomCheckBoxName := 'Squeak (duller)'.
	randomEntryName := 'Set Etoys Mode'.
      self runQuery: themesAndColorName.
      self algInstance keyStroke: tab.
      self runQuery: randomCheckBoxName.
	self assert: (self resultsIncludeName: randomCheckBoxName).
      self runQuery: randomEntryName.
	self assert: (self resultsIncludeName: randomEntryName)