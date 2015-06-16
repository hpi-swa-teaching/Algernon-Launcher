instance creation
close
	self currentInstance ifNotNil: [
		self currentInstance deactivate.
		self currentInstance delete.
		currentInstance := nil.].
	