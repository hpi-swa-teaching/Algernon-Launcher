scoring
scoreBetween: stringOne and: stringTwo with: i and: j

	| cost minimum minimumAux |

	(stringOne at: i) = (stringTwo at: j)
		ifTrue: [ cost:=0 ]
		ifFalse: [ cost:=1 ].

	minimumAux := ((self arrayTwo at: j) + 1) min: ((self arrayOne at: (j+1)) + 1).
	minimum :=  minimumAux min: ((self arrayOne at: j) + cost).
	self arrayTwo at: (j+1) put: minimum.