testing
testMovingAlgernon

	| brotkruemel meineHand |
	brotkruemel := self algerInstance breadcrumbs.
	meineHand := algerInstance world activeHand.
	meineHand attachMorph: brotkruemel.
	meineHand moveToEvent: ((MouseMoveEvent new) position: 100@100).
	meineHand dropMorph: brotkruemel event: (MouseButtonEvent new).
	self assert: (self algerInstance position = (100@100))
	