testing
testRanking
	| action prevAction |
	action := actions first.
	prevAction := action deepCopy.
	action incrementNumTimesSelected.
	self assert: (action isLessThan: prevAction)