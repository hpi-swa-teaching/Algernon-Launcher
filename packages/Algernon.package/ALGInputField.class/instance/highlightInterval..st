highlighting
highlightInterval: anInterval
	self text removeAttribute: self highlightAttribute.
	(anInterval start > 0)
		ifTrue: [self text addAttribute: self highlightAttribute from: (anInterval start) to: (anInterval stop)].
	self changed
	