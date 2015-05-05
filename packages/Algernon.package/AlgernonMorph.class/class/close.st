instance creation
close
	self currentInstance ifNotNil: [self currentInstance deactivate.].
	currentInstance := nil.