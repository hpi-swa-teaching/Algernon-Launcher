visibility
activate: hand
	"Sets keyboard focus and orders to the top"
	| outerMorph |

	self active ifTrue: [^ self].
	self active: true.
	self itemProvider reset.
	self wasChanged ifTrue: [self refreshItems].
	self grabFocus: self activeHand.
	self initializePosition; show.

	outerMorph := self topRendererOrSelf.
	outerMorph owner
		ifNil: [^ self "avoid spurious activate when drop in trash"].
	outerMorph owner firstSubmorph == outerMorph
		ifFalse: ["Bring me (with any flex) to the top if not already"
			outerMorph owner addMorphFront: outerMorph].
	"hand newKeyboardFocus: self textField."
	"self textField editor selectAll."
	
	
