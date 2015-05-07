visibility
activate: hand
	"sets keyboard focus and orders to the top"
	| outerMorph |
	
	self active ifTrue: [^ self].
	self active: true.

	self wasChanged ifTrue: [self refreshItems].
	self grabFocus: hand.
	self show.
	
	outerMorph := self topRendererOrSelf.
	outerMorph owner
		ifNil: [^ self "avoid spurious activate when drop in trash"].
	outerMorph owner firstSubmorph == outerMorph
		ifFalse: ["Bring me (with any flex) to the top if not already"
			outerMorph owner addMorphFront: outerMorph].
	"hand newKeyboardFocus: textMorphInstance."
	textField editor selectAll.
	
	
