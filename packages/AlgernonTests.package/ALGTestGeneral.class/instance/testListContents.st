testing
testListContents
	self ensureMorphic.
	self deny: (self itemProviderSearch: 'Algernon') isEmpty