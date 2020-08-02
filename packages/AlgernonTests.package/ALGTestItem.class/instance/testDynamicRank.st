testing
testDynamicRank
	| item oldRank |
	item := ALGItem new.
	item updateAlgertype: (ALGFakeType new).
	item incrementNumTimesSelected.
	oldRank := item rank.
	item incrementNumTimesSelected.
	self assert: item rank > oldRank.