lists
relevantAlgertemsFor: aString
	|releventAlgertems lcs|
	lcs := aString asLowercase.
	releventAlgertems := algertems select: [:each | each isRelevantGiven:lcs].
	releventAlgertems := sorter sort:releventAlgertems given:aString.
 	
	^ releventAlgertems.