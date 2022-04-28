running
tearDown
	self algInstance deactivate.
	self algInstance delete.
	(self currentSystemWindows difference: self previouslyOpenedWindows)
		do: [:each | each delete].
	self restorePreferences.
	Algernon currentInstance: self previousAlgernonSingleton.