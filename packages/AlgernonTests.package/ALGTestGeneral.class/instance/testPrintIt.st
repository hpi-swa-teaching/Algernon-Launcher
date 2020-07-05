testing
testPrintIt
	"Test the do hotword by running an example query.
	Due to the nature of the Transcript we can only read
	the last character."
	self runQuery: '= 1+1'.
	(ALGExpressionType new
	  typeObject: self algInstance) printit.
	"2 was printed"
	self assert: (Transcript peekLast = $2).
	"a Transcript is open"
	self assert: (Transcript countOpenTranscripts > 0).