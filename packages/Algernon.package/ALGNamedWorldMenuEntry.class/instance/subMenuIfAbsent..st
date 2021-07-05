accessing
subMenuIfAbsent: aBlock
	
	^ (self morph class canUnderstand: #subMenu)
		ifTrue: [ self morph subMenu ifNil: [^ aBlock value] ]
		ifFalse: [ aBlock value ]