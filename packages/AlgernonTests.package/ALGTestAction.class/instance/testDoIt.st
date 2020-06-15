testing
testDoIt
	"Test the do hotword by running an example query"
	self core textField contents: 'do (Random new) nextValue'.
	(ALGExpressionType new
	  typeObject: self core) doit. 
	self core deactivate. "close Algernon after test is done"