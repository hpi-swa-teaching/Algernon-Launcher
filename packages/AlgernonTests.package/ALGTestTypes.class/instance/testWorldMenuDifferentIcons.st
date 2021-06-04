testing world menu types
testWorldMenuDifferentIcons
	| allItemIcons |
	
	allItemIcons := OrderedCollection new.
	self runQuery: 'Save'.
	allItemIcons add: self items first icon.
	self runQuery: 'CreateMVCProject'.
	allItemIcons add: self items first icon.
	self runQuery: 'File List'.
	allItemIcons add: self items first icon.
	self runQuery: 'http proxy editor'.
	allItemIcons add: self items first icon.
	self runQuery: 'Transcript clear'.
	allItemIcons add: self items first icon.
	self runQuery: 'RecoverChanges'.
	allItemIcons add: self items first icon.
	self runQuery: 'Online Resources'.
	allItemIcons add: self items first icon.
	
	self assert: (allItemIcons allSatisfy: 
		[ :icon | 
		(allItemIcons  count: [ :otherIcon | otherIcon = icon ]) = 1]).