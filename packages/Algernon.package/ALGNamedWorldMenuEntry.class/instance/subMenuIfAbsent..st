accessing
subMenuIfAbsent: aBlock
	
	Transcript showln: (self morph).
	^ (self morph class canUnderstand: #subMenu)
		ifTrue: [ self morph subMenu ]
		ifFalse: [ aBlock value ]