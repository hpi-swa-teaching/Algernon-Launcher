actions
createListOfAlgeractions

	| list aRepoLabel  workingCopy repository |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aRepoLabel := self typeObject.
	workingCopy := self getWorkingCopy.
	repository := self getRepositoryFrom: workingCopy with: aRepoLabel.
	list add: (self createActionOpenFor: repository).
	list add: (self createActionSaveFor: repository with: workingCopy).
	^ list