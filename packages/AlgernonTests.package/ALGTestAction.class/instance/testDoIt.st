testing
testDoIt
	"Test the do hotword by running an example query"
	| tempCore |
	tempCore := ALGCore new.
	tempCore textField contents: 'do (Random new) nextValue'.
	(ALGExpressionType new
	  typeObject: tempCore) doit. 