helpers
moveToMouse
	| hand dropEvent |
	hand := self algerInstance world activeHand.
	hand attachMorph: self algerInstance.
	dropEvent := MouseButtonEvent new
		setType: #mouseDown position: (0@0) which: 4 buttons: 4 hand: hand stamp: nil.
	hand dropMorph: self algerInstance event: dropEvent.