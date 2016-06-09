testing
testSelectionIncrement
	
	| action prevIncrement |
	action := actions first.
	prevIncrement := action numTimesSelected.
	action incrementNumTimesSelected.
	self assert: action numTimesSelected equals: prevIncrement + 1