relevance
resultsFor: aString

	| items |
	items := self relevantAlgertemsFor: aString.
	(items notNil) ifTrue: [ ^ self categorize: items ].
	^ items
	