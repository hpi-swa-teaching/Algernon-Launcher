stepping and presenter
step

	self isFirstStep
		ifTrue: [
			self firstStep: false]
		ifFalse: [
			self stopStepping.
			Cursor wait
				showWhile: [self updateItemList]]