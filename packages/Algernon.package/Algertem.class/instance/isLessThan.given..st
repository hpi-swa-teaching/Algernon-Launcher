comparison
isLessThan: anAlgertem given: aLowercaseString
	| me1 other1 me2 other2 me3 other3 myRank otherRank |
	
	myRank := self rank.
	otherRank := anAlgertem rank.
	
	
	(myRank > otherRank) ifTrue: [^true].
	(myRank < otherRank) ifTrue: [^false].
	
	
	me1 := (self initials beginsWith: aLowercaseString).
	other1 := (anAlgertem initials beginsWith: aLowercaseString).
	
	(me1 & (other1 not)) ifTrue: [^true].
	(other1 & (me1 not)) ifTrue: [^false].
	
	me3 := (self lowerCaseName beginsWith: aLowercaseString).
	other3 := (anAlgertem lowerCaseName beginsWith: aLowercaseString).

	(me3 & (other3 not)) ifTrue: [^true].
	(other3 & (me3 not)) ifTrue: [^false].
	
	(me1) 
		ifTrue:[me2 := true]
		ifFalse:[me2 := self initials includesSubString:aLowercaseString.].
	
	(other1) 
		ifTrue:[other2 := true]
		ifFalse:[other2 := anAlgertem initials includesSubString:aLowercaseString.].
	
	(me2 & (other2 not)) ifTrue: [^true].
	(other2 & (me2 not)) ifTrue: [^false].
	
	^ self name < anAlgertem name.
	
