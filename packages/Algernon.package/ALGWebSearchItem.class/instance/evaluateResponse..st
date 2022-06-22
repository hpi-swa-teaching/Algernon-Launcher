web
evaluateResponse: aWebResponse

	| json |
	[json := Json readFrom: (aWebResponse content readStream)] on: Exception do: [self displayError].
	Transcript show: 'Successful web search!'.
	Transcript cr.