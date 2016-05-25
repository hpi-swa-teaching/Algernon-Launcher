running
setUp
	ClassOrganizer allInstancesDo: [:ea | ea removeEmptyCategories].
	algerstance := Algernon new.
	Algernon currentInstance ifNil: [Algernon open.
									Algernon close].
	previouslyOpenedBrowsers := self currentBrowsers