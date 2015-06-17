lists
relevantAlgertemsFor: aString
"Return a list of relevent Algertems for a given input. The list gets cached for each input. The cache is cleared when Algernon gets activated"
	| lcs |
	lcs := aString asLowercase.

	self cachedResults at: lcs
		ifPresent: [ :terms | ^terms]
		ifAbsent: [
			lcs size <= 1 ifTrue: [self limitedAlgertems: algertems].

			self limitedAlgertems: (self limitedAlgertems select: [:each | each isRelevantGiven: lcs]).
			self limitedAlgertems: (sorter sort: self limitedAlgertems given:aString).
			
			self cachedResults at: lcs put: self limitedAlgertems.
			^ self limitedAlgertems].