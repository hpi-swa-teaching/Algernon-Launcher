singleton
cleanup
	self currentInstance ifNotNil: [
		self close.
		self currentInstance delete.
		currentInstance := nil].
	