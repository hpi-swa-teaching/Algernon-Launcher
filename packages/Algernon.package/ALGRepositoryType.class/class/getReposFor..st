algertem lists
getReposFor: aWorkingCopyLabel

	| workingCopy |
	workingCopy := self getWorkingCopyFor: aWorkingCopyLabel.
	workingCopy ifNil: [	^ OrderedCollection new ].
	^ workingCopy repositoryGroup normalizedRepositories