filtering
filter: anItemCollection given: aStringCollection

	| apropos |
	apropos := aStringCollection second.
	^ anItemCollection select: [ :each | each matchesComment: apropos ]