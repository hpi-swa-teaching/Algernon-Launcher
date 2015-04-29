algertem lists
algertemListWith: aCategory
	|classes algertems|
	algertems := OrderedCollection new.
	classes := self classesForCategory:aCategory.
	classes do: [ :each | algertems add: (
		Algertem withAlgertype: (self with:each) relevantForEmptyString:true)].
	^algertems.

