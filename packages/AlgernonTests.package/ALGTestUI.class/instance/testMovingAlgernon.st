testing positioning
testMovingAlgernon
	| oldPosition |
	oldPosition := self algInstance position.
	self moveToMouse.
	self deny: (self algInstance position = oldPosition).