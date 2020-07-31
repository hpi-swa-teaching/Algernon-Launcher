algertem lists
additionalToolEntries
	^ OrderedCollection
		with: (ALGItem
				withAlgertype: (self with: #('Browser' #openClassBrowser)))
		with: (ALGItem
				withAlgertype: (self with: {'Transcript'. #open. Transcript} asOrderedCollection))