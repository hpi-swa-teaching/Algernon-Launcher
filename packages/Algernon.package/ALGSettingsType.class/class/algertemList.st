algertem lists
algertemList

	| settings  |
	settings := PreferenceBrowser new categoryList.
	settings removeFirst. "is --all--"
	^ settings collect: [ :each | ALGItem withAlgertype: (self with: each) ]