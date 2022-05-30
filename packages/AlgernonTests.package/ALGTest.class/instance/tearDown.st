running
tearDown
	self algInstance deactivate.
	(self currentSystemWindows difference: self previouslyOpenedWindows)
		do: [:each | each delete].
	ALGCore allInstances do: [:item | item delete].
	self restorePreferences.
	Algernon currentInstance: self previousAlgernonSingleton.