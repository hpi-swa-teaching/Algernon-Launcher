lists
relevantAlgertemsFor: aString
	| relevantAlgertems lcs |
	lcs := aString asLowercase.

	lcs size < 2 ifTrue: [self limitedAlgertems: algertems].

	self cachedResults at: lcs
		ifPresent: [ :terms | relevantAlgertems := terms]
		ifAbsent: [
			self limitedAlgertems: (self limitedAlgertems select: [:each | each isRelevantGiven: lcs]).
			self cachedResults at: lcs put: self limitedAlgertems.
			relevantAlgertems := self limitedAlgertems.
		 ].

	relevantAlgertems := sorter sort: relevantAlgertems given:aString.

	^ relevantAlgertems.