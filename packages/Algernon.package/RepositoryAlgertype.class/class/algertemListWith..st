algertem list
algertemListWith: aWorkingCopyLabel
	|repos workingCopy algertems|

	algertems := OrderedCollection new.

	"since we only get the label of a package we have to fetch the workingCopyObject again"
	workingCopy := ((MCWorkingCopyBrowser new workingCopies) select: [ :element |
		(element packageName) = 'Algernon']) at: 1.
	workingCopy ifNil: [	^algertems ].

	repos := workingCopy repositoryGroup normalizedRepositories.
	repos do: [ :each | algertems add: (
		Algertem withAlgertype: (self with:each description))].

	^algertems.
	

