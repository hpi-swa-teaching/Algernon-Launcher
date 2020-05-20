filtering
filter: anItemCollection given: aStringCollection
	^ anItemCollection select: [:each | each algerType typeName = 'Help' ]