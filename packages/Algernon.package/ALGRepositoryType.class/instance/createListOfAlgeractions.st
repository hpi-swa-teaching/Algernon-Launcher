actions
createListOfAlgeractions

	| aRepoLabel  workingCopy repository |
	aRepoLabel := self typeObject.
	workingCopy := self getWorkingCopy.
	repository := self getRepositoryFrom: workingCopy with: aRepoLabel.
	^ self createSortedListFrom: {
		self createActionOpenFor: repository.
		self createActionSaveFor: repository with: workingCopy }