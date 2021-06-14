updating
addAll: anItemCollection startingAt: index
	anItemCollection withIndexDo: [ :each :i | self add: each at: index+i-1 ].
	^ anItemCollection size