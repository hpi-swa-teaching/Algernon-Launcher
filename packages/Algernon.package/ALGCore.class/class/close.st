singleton
close

	self currentInstance ifNotNil: [self currentInstance deactivate]
	