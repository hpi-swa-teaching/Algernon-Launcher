running
setUp
	ClassOrganizer allInstancesDo: [:ea | ea removeEmptyCategories].
	self algerInstance: Algernon new.
	Algernon currentInstance ifNil: [Algernon open.
									Algernon close].
	previouslyOpenedBrowsers := self currentSystemWindows