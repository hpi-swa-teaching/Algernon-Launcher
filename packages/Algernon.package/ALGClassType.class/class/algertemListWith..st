algertem lists
algertemListWith: aCategory
	| classes algertems |
	algertems := OrderedCollection new.
	classes := self classesForCategory:aCategory.
	classes do: [ :each | algertems add: (ALGItem withAlgertype: (self with: each))].
	^ algertems

