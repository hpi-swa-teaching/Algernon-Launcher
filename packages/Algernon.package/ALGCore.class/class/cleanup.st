singleton
cleanup

	self currentInstance ifNotNil: [
		self close.
		self currentInstance delete.
		CurrentInstance := nil ]
	