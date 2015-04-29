relevant
isRelevantGiven: aString 
	"Always wants relevance for strings starting with ="
	^ (aString beginsWith:'=').