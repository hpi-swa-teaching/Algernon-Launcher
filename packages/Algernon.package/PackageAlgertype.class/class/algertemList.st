algertem lists
algertemList
	|packages algertems|
	algertems := OrderedCollection new.
	packages := MCWorkingCopyBrowser new workingCopies.
	packages do: [ :each | algertems add: (
		Algertem withAlgertype: (self with:each packageName))].
	^algertems.

