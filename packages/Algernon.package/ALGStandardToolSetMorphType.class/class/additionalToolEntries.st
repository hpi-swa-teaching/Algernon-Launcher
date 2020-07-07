algertem lists
additionalToolEntries
	^ OrderedCollection
		with: (ALGItem
				withAlgertype: (self with: #('Browser' #openClassBrowser)))
		with: (ALGItem
				withAlgertype: (self
						with: (OrderedCollection
								with: 'Transcript'
								with: #open
								with: Transcript)))