accessing
lastDefaultItemUpdateTimeStamp

	LastDefaultItemUpdateTimeStamp ifNil:
		[self lastDefaultItemUpdateTimeStamp: TimeStamp current].
	^ LastDefaultItemUpdateTimeStamp
