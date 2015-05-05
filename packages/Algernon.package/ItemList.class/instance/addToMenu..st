actions
addToMenu: anAlgertem
	self algernonListItems add: anAlgertem.
	self add: anAlgertem name
				target: (anAlgertem defaultAlgeraction target)
				selector: (anAlgertem defaultAlgeraction selector)
				argumentList: (anAlgertem defaultAlgeraction args).
				
	typeList addItem: anAlgertem algertype typeName.
				