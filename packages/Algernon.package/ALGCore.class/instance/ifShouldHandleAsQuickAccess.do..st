events-processing
ifShouldHandleAsQuickAccess: anEvent do: aBlock
	
	Transcript show: anEvent modifierString.
	^ (anEvent modifierString sameAs: self class quickAccessModifier, ' ')
		ifTrue: [ aBlock value ]

	