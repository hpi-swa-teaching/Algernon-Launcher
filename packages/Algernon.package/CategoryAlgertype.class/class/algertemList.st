algertem lists
algertemList
	|classes algertems|
	algertems := OrderedCollection new.
	classes := SystemOrganization categories asOrderedCollection.
	classes do: [ :each | algertems add: (
		Algertem withAlgertype: (self with:each))].
	^algertems.

