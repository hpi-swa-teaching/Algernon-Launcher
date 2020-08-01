updating
highlightLastCrumb
	self submorphs size > 1
		ifTrue: [self submorphs last color: self class highlightedTextColor]