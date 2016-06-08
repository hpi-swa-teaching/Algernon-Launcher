filtering
filter: anItemCollection given: aStringCollection

	| commentKeyWord |
	commentKeyWord := aStringCollection second.
	^ anItemCollection select: [ :each | each matchesComment: commentKeyWord ]