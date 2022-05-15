highlighting
highlightKeyword
	| interval |
	interval := self keywordIntervalFor: self currentContent.
	self highlightInterval: interval.