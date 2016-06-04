as yet unclassified
scoreBetween: stringOne and: stringTwo 
	
	"Iterative calculation of the Levenshtein distance between two strings."
	
	| arrayTwo arrayOne|
	" degenerate cases"
	stringTwo = stringOne 
		ifTrue:[^0].
	(stringTwo size) = 0 
		ifTrue:[^(stringOne size)].
	(stringOne size) = 0 
		ifTrue:[^(stringTwo size)].
	
	"create two work vectors of integer distances"
	arrayOne := Array new:((stringTwo size) + 1).
	arrayTwo := Array new:((stringTwo size) + 1).
	
	"initialize v0 (the previous row of distances)
    	this row is A[0][i]: edit distance for an empty s
    	the distance is just the number of characters to delete from t"
	(1 to: (arrayOne size)) do:[ :i | arrayOne at: i put: i-1 ].
	
	(1 to: (stringOne size)) do: [ : i | 	
		" calculate v1 (current row distances) from the previous row v0
		first element of v1 is A[i+1][0] edit distance is delete (i+1) chars from s to match empty t"
  		arrayTwo at: 1 put: i.
		
		 " use formula to fill in the rest of the row"
		(1 to: (stringTwo size)) do: [ :j || cost minimum minimumAux |
			((stringOne at: i) = (stringTwo at: j)) 
				ifTrue:[cost:=0]
				ifFalse:[cost:=1].			
			minimumAux := ((arrayTwo at: j) + 1) min: ((arrayOne at: (j+1)) + 1).
			minimum :=  minimumAux min: ((arrayOne at: j) + cost).
			arrayTwo at: (j+1) put: minimum.].
		
		(1 to: (arrayOne size)) do: [ :j | arrayOne at: j put: (arrayTwo at: j) ].
		
		].

	^arrayTwo at: ((stringTwo size)+1).