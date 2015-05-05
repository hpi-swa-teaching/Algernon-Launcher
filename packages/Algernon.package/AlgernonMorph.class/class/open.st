instance creation
open
	currentInstance ifNil: [currentInstance := self new.
			^ currentInstance openInWorld.]
		ifNotNil: [ currentInstance activate].
