initialization
addToDockingBar: aDockingBar

	| item |
	item := self new.
	aDockingBar addMorphFront: item.
	^ item