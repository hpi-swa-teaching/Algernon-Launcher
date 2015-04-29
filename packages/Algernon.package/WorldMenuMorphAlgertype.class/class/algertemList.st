algertem list
algertemList
	|  algertems|
	algertems := OrderedCollection new.
	TheWorldMenu registry do: [ :each | algertems add: (Algertem withAlgertype: (self with:each ))].
	
	^algertems.

