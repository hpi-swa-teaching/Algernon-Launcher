testing package type
testPackageAction
	| browsersBefore |
	self runQuery: 'Algernon'.
	self moveCursorTo: 'Package'.
	browsersBefore := self findSystemWindowsByLabel: 'Monticello Browser'.
	self activateCurrentItemAction.
	self assert: (self findSystemWindowsByLabel: 'Monticello Browser') size equals: (browsersBefore size + 1).
	self deleteNewSystemWindowsByLabel: 'Monticello Browser' old: browsersBefore