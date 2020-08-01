testing positioning
testMovingAlgernonIsRemembered
	| oldPosition |
	self moveToMouse.
	oldPosition := self algInstance position.
	self algInstance deactivate.
	self algInstance activate.
	self assert: (self algInstance  position = oldPosition).