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
	
	Transcript show: 'Algernon is great'.
	self deny: (Transcript peekLast) equals: (query value)