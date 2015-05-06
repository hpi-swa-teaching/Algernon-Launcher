instance creation
open
	currentInstance ifNil: [currentInstance := self new.]
		ifNotNil: [ currentInstance activate].
	^ currentInstance