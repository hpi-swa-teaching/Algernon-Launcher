algertem lists
algertemListWith: aCategory
	^ (self classesForCategory: aCategory)
		collect: [ :each | ALGItem withAlgertype: (self with: each) ]