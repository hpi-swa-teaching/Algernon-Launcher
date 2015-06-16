actions
addToMenu: anAlgeraction
	self algernonListItems add: anAlgeraction.
	self add: anAlgeraction name
				target: (anAlgeraction target)
				selector: (anAlgeraction selector)
				argumentList: (anAlgeraction args)