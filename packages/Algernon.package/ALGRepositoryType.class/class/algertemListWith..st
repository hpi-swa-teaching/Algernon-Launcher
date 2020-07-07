algertem lists
algertemListWith: aWorkingCopyLabel

	| repos algertems |
	algertems := OrderedCollection new.
	repos := self getReposFor: aWorkingCopyLabel.
	repos do: [ :each |
		algertems add: (ALGItem withAlgertype: (self
			withType: (each description)
			withPackage: aWorkingCopyLabel))].
	^ algertems
	

