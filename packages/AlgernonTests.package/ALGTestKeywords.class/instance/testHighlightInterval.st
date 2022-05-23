testing
testHighlightInterval
	| inputField |
	self algInstance activate.
	inputField := self algInstance textField inputfield.
	inputField text append: 'abc'.
	self assert: ((inputField text attributesAt: 1) size) equals: 0.
	inputField highlightInterval: (1 to: 1).
	self assert: ((inputField text attributesAt: 1) size) equals: 1.
	inputField highlightInterval: (1 to: 2).
	self assert: ((inputField text attributesAt: 1) size) equals: 1.
	inputField highlightInterval: (0 to: 0).
	self assert: ((inputField text attributesAt: 1) size) equals: 0.