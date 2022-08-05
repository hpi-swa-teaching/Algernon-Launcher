accessing
parrentItemYieldTop

	self parentItem
		ifNil: [^ true]
		ifNotNil: [^ self parentItem yieldTop]