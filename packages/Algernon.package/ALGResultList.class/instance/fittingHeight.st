drawing
fittingHeight

	^ [self items last bounds bottom + (self class borderWidth * 2)]
		on: Exception do: [self maximumHeight]