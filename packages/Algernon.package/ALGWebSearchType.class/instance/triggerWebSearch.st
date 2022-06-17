web
triggerWebSearch

	| url |
	url := self class webSearchUrl, self getSearchString encodeForHTTP.
	
	[ALGWebClient 
		asyncHttpGet: url response: [ :response | self evaluateResponse: response ]] 
	on: ConnectionRefused do: [:exception | self displayError: exception]