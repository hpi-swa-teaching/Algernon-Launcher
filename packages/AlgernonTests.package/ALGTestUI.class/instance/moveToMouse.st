helpers
moveToMouse
	| hand dropEvent |
	hand := self algInstance world activeHand.
	hand attachMorph: self algInstance.
	dropEvent := MouseButtonEvent new
		setType: #mouseDown position: (0@0) which: 4 buttons: 4 hand: hand stamp: nil.
	hand dropMorph: self algInstance event: dropEvent.