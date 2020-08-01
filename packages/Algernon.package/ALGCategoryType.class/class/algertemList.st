algertem lists
algertemList

	^ SystemOrganization categories asOrderedCollection
		collect: [ :each | ALGItem withAlgertype: (self with: each) ]