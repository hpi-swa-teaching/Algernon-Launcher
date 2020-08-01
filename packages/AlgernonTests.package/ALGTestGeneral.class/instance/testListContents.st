testing algernon instance
testListContents

	self ensureMorphic.
	self deny: (self algInstance itemProvider searchForItems: 'Algernon') isEmpty