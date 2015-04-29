algertem list
algertemListExcluding: aList
	|algertemList|
	algertemList := self algertemList.
	
	^ algertemList select: 
		[:each | aList do:[ :existingMorph | (each name = existingMorph name) ifTrue:[false]]. 
				Transcript show:(each name).true].
	

