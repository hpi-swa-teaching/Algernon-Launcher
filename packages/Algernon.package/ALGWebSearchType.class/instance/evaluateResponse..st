web
evaluateResponse: aWebResponse

	| json |
	"2 seconds asDelay wait."
	
	[json := Json readFrom: (aWebResponse content readStream).
	self webResults: (self createWebResultItemsFrom: (json at: 'items'))] 
		on: Exception do: [:exception | ^ self displayError: exception].
	
	"self searchResults: {
		ALGWebResultItem createFrom: 'TEST' withRank: 3. 
		ALGWebResultItem createFrom: 'TEST 2' withRank: 2. 
		ALGWebResultItem createFrom: 'TEST 3' withRank: 1}."
	
	ALGCore currentInstance itemProvider cache clear.
	ALGCore currentInstance updateItemList.