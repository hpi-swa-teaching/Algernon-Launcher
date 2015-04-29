accessing
currentAlgertemString
	^ self currentAlgertem ifNil: [' ']  ifNotNil: [:tem | tem name asString]