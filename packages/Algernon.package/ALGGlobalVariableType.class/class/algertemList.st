algertem lists
algertemList
	^ (Smalltalk globals associations
		reject: [ :each | each value class isMeta ])
	 	collect: [:each | self createItemFor: each].