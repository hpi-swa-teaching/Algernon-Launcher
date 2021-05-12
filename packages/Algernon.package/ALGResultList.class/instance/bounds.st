accessing
bounds

	| boundsCopy |
	
	boundsCopy := bounds copy.
	
	[boundsCopy := boundsCopy withHeight: (boundsCopy height min: self items last bounds bottom + (self class borderWidth * 2))]
		on: Exception do: [ :ex | ].

	^ boundsCopy