testing
testMouseItemSelection
	| hand position moveEvent |
	self runQuery: 'ALGCore'.
	hand:= self algInstance world activeHand.
	position:= self algInstance itemList submorphs third bounds center.
	moveEvent:=MouseButtonEvent new setType: #mouseMove position: position which: 0 buttons: 0 hand: hand stamp: nil.
	self algInstance mouseMove: moveEvent.
	self assert: self algInstance itemList selectedItem item = self items second.