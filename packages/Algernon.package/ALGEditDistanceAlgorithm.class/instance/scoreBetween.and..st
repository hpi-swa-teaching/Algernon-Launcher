scoring
scoreBetween: stringOne and: stringTwo 	
	"Iterative calculation of the Levenshtein distance between two strings."
	
	stringTwo = stringOne 
		ifTrue:[^0].
	(stringTwo size) = 0 
		ifTrue:[^(stringOne size)].
	(stringOne size) = 0 
		ifTrue:[^(stringTwo size)].
	
	self arrayOne: (Array new: (stringTwo size + 1)).
	self arrayTwo: (Array new: (stringTwo size + 1)).
	
	1 to: self arrayOne size do: [ :i | self arrayOne at: i put: i-1 ].
	
	1 to: stringOne size do: [ : i | self arrayTwo at: 1 put: i.		
		1 to: stringTwo size do: [ :j | self scoreBetween: stringOne and: stringTwo with: i and: j].
		1 to: self arrayOne size do: [ :j | self arrayOne at: j put: (self arrayTwo at: j)]].

	^ self arrayTwo at: (stringTwo size + 1)