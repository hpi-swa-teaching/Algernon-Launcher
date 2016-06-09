testing
testMouseDownDeactivates

	background mouseDown: MouseButtonEvent new.
	self assert: controller deactivated