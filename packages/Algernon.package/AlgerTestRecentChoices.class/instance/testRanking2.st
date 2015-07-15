testing
testRanking2
	"Make sure recent choices are ranked higher."
	| searchTerm fixedChoice initialRank newRank |
	searchTerm := 'Browser'.
	10 timesRepeat: [ | listItems |
		algerstance textField contents: searchTerm.
		algerstance updateItemList.
		listItems := algerstance itemList algernonListItems.
		"Fixate last item in list initially."
		fixedChoice ifNil: [fixedChoice := listItems last.
							initialRank := listItems indexOf: fixedChoice ].
		"Make sure fixed item is selected."
		[fixedChoice name = algerstance itemList selectedListItem name]
			whileFalse: [ algerstance selectNext ].
		algerstance doActionOnSelectedEvent: nil.
	].
	newRank := algerstance itemList algernonListItems indexOf: fixedChoice.
	self assert: (newRank <= initialRank)