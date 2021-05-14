accessing
bounds
	"Note that we override some morphic behavior here"
	
	^ [bounds withHeight: (bounds height min: self items last bounds bottom + (self class borderWidth * 2))]
	   	on: Exception do: [ :ex | bounds].