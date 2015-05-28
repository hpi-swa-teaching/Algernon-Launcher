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
	
	list add: (Algeraction withName:'open Repository' 
					rank:10 target:self selector:#open: args:(OrderedCollection with:repository)).
	list add: (Algeraction withName:'save Repository' 
					rank:9 target:self selector:#openInNewBrowser: args:(OrderedCollection with:repository)). 

	^list.