as yet unclassified
filterOutDuplicates: anOrderedCollection
	
	^ (((anOrderedCollection collect: [ :entry | entry name]) asSet) collect: 
		[ :name | anOrderedCollection detect: [ :entry | entry name = name]]) asOrderedCollection
