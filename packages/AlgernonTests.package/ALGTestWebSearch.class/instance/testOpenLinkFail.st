testing
testOpenLinkFail

	| query |
	
	ALGOSProcess := ALGFakeOSProcess new.

	query := [
		self 
			runQuery: 'web Algernon';
			activateCurrentItemAction;
			activateCurrentItemAction.
		Transcript peekLast].
	
	Transcript show: 'Algernon is great'. "this is needed because 'Transcript peekLast' returns 'Character cr' by default"
	self deny: (Transcript peekLast) equals: (query value)