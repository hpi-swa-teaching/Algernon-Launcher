running
tearDown
	self algInstance deactivate: nil.
	(self currentSystemWindows difference: self previouslyOpenedWindows)
		do: [:each | each delete]