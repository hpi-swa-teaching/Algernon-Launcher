algertem lists
algertemListWith: aWorkingCopyLabel

	| repos workingCopy algertems |
	algertems := OrderedCollection new.
	workingCopy := self getWorkingCopyFor: aWorkingCopyLabel.
	workingCopy ifNil: [	^ algertems ].
	repos := workingCopy repositoryGroup normalizedRepositories.
	repos do: [ :each |
		algertems add: (ALGItem withAlgertype: (self
			withType: (each description)
			withPackage: aWorkingCopyLabel) relevantForEmptyString: true)].
	^ algertems
	

