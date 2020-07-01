testing
testListContents

	self ensureMorphic.
	self deny: (algerInstance itemProvider searchForItems: 'Algernon') isEmpty