comparison
isLessThan: anItem given: aLowercaseString

	| compare |
	compare := self comparisonsFor: anItem given: aLowercaseString.
	^ compare detect: [ :result | result ~~ #equals ]
	
