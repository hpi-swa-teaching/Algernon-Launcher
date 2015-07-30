algertem lists
algertemList
	
	| eligibleClasses quads algertems |
	algertems := OrderedCollection new.
	eligibleClasses := Morph withAllSubclasses.
	quads := OrderedCollection new.
	self flag: #todo.
	^ algertems

