initialization
initialize
	
	super initialize.
	self
		contents: 'Dummy menu';
		subMenuUpdater: self
		selector: #listDummyEntriesOn: