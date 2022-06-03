running
tearDown
	self algInstance deactivate.
	(self currentSystemWindows difference: self previouslyOpenedWindows)
		do: [:each | each delete].
	ALGCore allInstances do: [:each | each delete].
	Algernon currentInstance: self previousAlgernonSingleton.
	self restorePreferences