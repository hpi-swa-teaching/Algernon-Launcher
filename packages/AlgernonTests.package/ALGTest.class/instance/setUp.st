running
setUp
	ClassOrganizer allInstancesDo: [:ea | ea removeEmptyCategories].
	algerInstance := Algernon new.
	Algernon currentInstance ifNil: [Algernon open.
									Algernon close].
	previouslyOpenedBrowsers := self currentBrowsers