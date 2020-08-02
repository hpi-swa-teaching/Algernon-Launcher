algertem lists
additionalToolEntries
	^ OrderedCollection
		with: (ALGItem
				withAlgertype: (self with: {'Browser' . #openClassBrowser} asOrderedCollection))
		with: (ALGItem
				withAlgertype: (self with: {'Transcript'. #open. Transcript} asOrderedCollection))