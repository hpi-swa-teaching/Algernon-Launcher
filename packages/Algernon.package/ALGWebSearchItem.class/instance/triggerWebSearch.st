web
triggerWebSearch

	[ALGWebClient 
		asyncHttpGet: self class webSearchUrl response: [ :response | self evaluateResponse: response ]] 
	on: ConnectionRefused do: [self displayError]
	