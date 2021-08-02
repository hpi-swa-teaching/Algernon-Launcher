accessing
isEnabled

	^ (self morph class canUnderstand: #isEnabled) not or: [self morph isEnabled]