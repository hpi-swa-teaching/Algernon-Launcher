testing
testPackageAction
	| browsersBefore |
	self runQuery: 'Algernon'.
	self moveCursorTo: 'Package'.
	
	browsersBefore := self findPluggableSystemWindowsByLabel: 'Monticello Browser'.

	self activateCurrentItemAction.
	self assert: ((self findPluggableSystemWindowsByLabel: 'Monticello Browser') size = (browsersBefore size + 1)).
	
	self deleteNewPluggableSystemWindowsByLabel: 'Monticello Browser' old: browsersBefore.