visibility
activate
	"orders to the top"
	| outerMorph |
	outerMorph := self topRendererOrSelf.
	outerMorph owner
		ifNil: [^ self"avoid spurious activate when drop in trash"].
	outerMorph owner firstSubmorph == outerMorph
		ifFalse: ["Bring me (with any flex) to the top if not already"
			outerMorph owner addMorphFront: outerMorph].