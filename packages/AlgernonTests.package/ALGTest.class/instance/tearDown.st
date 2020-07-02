running
tearDown
	self algerInstance deactivate: nil.
	(self currentSystemWindows
		reject: [:each | self previouslyOpenedWindows includes: each])
		do: [:each | each delete]