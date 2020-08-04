comparison
initialsLessThan: anItem given: aLowercaseString

	"| me other |
	me := self initials beginsWith: aLowercaseString.
	other := anItem initials beginsWith: aLowercaseString.
	^(me and: [other not])"
	self isLessThan: self initials or: anItem initials given: aLowercaseString
