testing
testDoIt
	"Test the do hotword by running an example query"
	self runQuery: 'do (Random new) nextValue'.
	(ALGExpressionType new
	  typeObject: self algerInstance) doit. 