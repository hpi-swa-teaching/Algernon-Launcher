testing
testClickOnBreadcrumpDoesNotDeacitvateAlgernon
	"for ticket 11"
	| event |
	self algerInstance activate.
	event := MouseButtonEvent new.
	event setHand: HandMorph new.
	self algerInstance breadcrumb mouseDown: event.
	self deny: self algerInstance active.
	