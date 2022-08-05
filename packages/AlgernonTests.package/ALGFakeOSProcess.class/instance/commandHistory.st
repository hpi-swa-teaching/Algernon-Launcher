accessing
commandHistory

	^ commandHistory ifNil: [commandHistory := OrderedCollection new]