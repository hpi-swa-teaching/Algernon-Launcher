testing
testpPackageAction
	| browsersBefore |
	self runQuery: 'Algernon'.
	[self algerInstance currentItem algerType typeName = 'Package'] whileFalse:  [self algerInstance selectNext].
	browsersBefore := MCWorkingCopyBrowser allInstances size.
	self algerInstance doActionOnSelectedEvent: nil.
	self assert: (MCWorkingCopyBrowser allInstances size = (browsersBefore + 1)).
	MCWorkingCopyBrowser allInstances do: [:each | each close ].