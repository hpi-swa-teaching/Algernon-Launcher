algertem lists
algertemList
	^ (Smalltalk globals declarations
		reject: [ :each | each value class isMeta ])
	 	collect: [:each | self createItemFor: each].