accessing
selector
	^ (self morph selector
		ifNil: [ String new.]) asString