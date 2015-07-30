list creation
createListOfAlgeractions
	| list aRepoLabel  workingCopy repository |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aRepoLabel := self typeObject.

	"since we only get the label of a package we have to fetch the workingCopyObject again"
	workingCopy := ((MCWorkingCopyBrowser new workingCopies) select: [ :element |
		(element packageName) = self repositoryPackage]) at: 1.

	repository := ((workingCopy repositoryGroup normalizedRepositories) select: [ :element |
		(element description) = aRepoLabel]) at: 1.
	
	list add: (ALGAction withName:'open' 
					rank:10 target:self selector:#open: args:(OrderedCollection with:repository)).
	list add: (ALGAction withName:'save' 
					rank:9 target:self selector:#save:withPackage: args:(OrderedCollection with:repository with:workingCopy)).

	^list.