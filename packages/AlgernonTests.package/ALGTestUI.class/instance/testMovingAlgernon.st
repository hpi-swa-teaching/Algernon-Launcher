testing
testMovingAlgernon
	| oldPosition |
	oldPosition := self algerInstance position.
	self moveToMouse.
	self deny: (algerInstance  position = oldPosition).