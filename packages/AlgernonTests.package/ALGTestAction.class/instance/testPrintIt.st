testing
testPrintIt
	"Test the do hotword by running an example query.
	Due to the nature of the Transcript we can only read
	the last character."
	| tempCore |
	tempCore := ALGCore new.
	tempCore textField contents: '= 1+1'.
	(ALGExpressionType new
	  typeObject: tempCore) printit.
	"2 was printed"
	self assert: (Transcript peekLast = $2).
	"a Transcript is open"
	self assert: (Transcript countOpenTranscripts > 0).
	
	"Clean up"
	tempCore deactivate.
	Transcript closeAllViews.