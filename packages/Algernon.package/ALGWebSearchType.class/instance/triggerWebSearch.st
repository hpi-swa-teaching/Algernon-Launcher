web
triggerWebSearch

	| url |
	url := self class webSearchUrl, self getSearchString encodeForHTTP.
	
	[(self typeObject webClient)
		asyncHttpGet: url response: [ :response | self evaluateResponse: response ]] 
	on: ConnectionRefused do: [:exception | self displayError: exception]