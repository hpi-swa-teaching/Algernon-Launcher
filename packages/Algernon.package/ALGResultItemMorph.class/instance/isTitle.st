accessing
isTitle

	^ self isEnabled not or: [self item isNil]
	