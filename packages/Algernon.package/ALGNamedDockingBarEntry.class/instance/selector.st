accessing
selector
	^ (self morph selector
		ifNil: [ String empty ]) asString
