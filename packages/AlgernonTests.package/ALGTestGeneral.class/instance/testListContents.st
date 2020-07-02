testing
testListContents

	self ensureMorphic.
	self deny: (self algerInstance itemProvider searchForItems: 'Algernon') isEmpty