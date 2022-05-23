highlighting
highlightInterval: anInterval
	self text removeAttribute: self highlightAttribute from: 1 to: self text size.
	(anInterval start > 0)
		ifTrue: [self text addAttribute: self highlightAttribute from: (anInterval start) to: (anInterval stop)].
	self changed
	