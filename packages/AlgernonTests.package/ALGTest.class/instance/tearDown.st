running
tearDown
	self algerInstance deactivate: nil.
	(self currentSystemWindows difference: self previouslyOpenedWindows)
		do: [:each | each delete]