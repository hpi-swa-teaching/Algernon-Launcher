algertem lists
algertemList
	|settings algertems|
	algertems := OrderedCollection new.
	settings := PreferenceBrowser new categoryList.
	settings removeFirst.
	settings do: [ :each | algertems add: (
		ALGItem withAlgertype: (self with:each))].
	^algertems.

