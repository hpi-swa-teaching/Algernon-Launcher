algertem list
algertemList
	| algertems|
	algertems := OrderedCollection new.

	Smalltalk globals associationsDo: [:each |
		each value class isMeta ifFalse: [
			algertems add: (ALGItem withAlgertype: (self with: each))]].
	^algertems

