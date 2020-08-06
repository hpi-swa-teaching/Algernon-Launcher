running
setUp
	self previousAlgernonSingleton: Algernon currentInstance.
	Algernon currentInstance: self algInstance.
	ClassOrganizer allInstancesDo: [:ea | ea removeEmptyCategories].
	self previouslyOpenedWindows:self currentSystemWindows.
	self algInstance activate.