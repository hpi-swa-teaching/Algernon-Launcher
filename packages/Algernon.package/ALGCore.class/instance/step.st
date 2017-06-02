stepping
step

	self isFirstStep
		ifTrue: [
			self firstStep: false]
		ifFalse: [
			self updateItemList.
			self stopStepping]