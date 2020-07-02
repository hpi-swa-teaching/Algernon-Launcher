running
setUp
	ClassOrganizer allInstancesDo: [:ea | ea removeEmptyCategories].
	self previouslyOpenedWindows:self currentSystemWindows.
	self algerInstance activate.