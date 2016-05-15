running
setUp
	ClassOrganizer allInstancesDo: [:ea | ea removeEmptyCategories].
	algerstance := Algernon new.
	previouslyOpenedBrowsers := self currentBrowsers