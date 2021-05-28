testing world menu types
assertWorldMenuEntry: aName
	self runQuery: aName.
	self assert: (self typeNameOfFirstResult = 'World Menu Item').
	self assert: (self nameOfFirstResult = aName)