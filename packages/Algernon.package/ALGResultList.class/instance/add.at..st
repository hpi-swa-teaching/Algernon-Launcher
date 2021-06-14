updating
add: anAlgertem at: index
	self add: anAlgertem
		target: (anAlgertem defaultAlgeraction target)
		selector: (anAlgertem defaultAlgeraction selector)
		argumentList: (anAlgertem defaultAlgeraction args)
		index: index