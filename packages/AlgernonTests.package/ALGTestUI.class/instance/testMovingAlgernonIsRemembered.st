testing
testMovingAlgernonIsRemembered
	| oldPosition |
	self moveToMouse.
	oldPosition := self algerInstance position.
	self algerInstance deactivate.
	self algerInstance activate.
	self assert: (self algerInstance  position = oldPosition).