algertem list
algertemList
	|  algertems|
	algertems := OrderedCollection new.
	TheWorldMenu registry do: [ :each | algertems add: (ALGItem withAlgertype: (self with:each ))].
	
	^algertems.

