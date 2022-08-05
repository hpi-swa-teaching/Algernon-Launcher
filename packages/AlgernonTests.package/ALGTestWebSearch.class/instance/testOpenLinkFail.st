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
	
	"this is needed because 'Transcript peekLast' returns 'Character cr' by default"
	Transcript show: 'Algernon is great'.
	self deny: (Transcript peekLast) equals: (query value)