accessing
name
	self ifDynamicItem: [self morph updateContents].
	^ self morph contents