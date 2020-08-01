event handling
disableTextMouseEvents
	self titleMorph ifNotNil: self disableMouseEventsForBlock.
	self nameMorph ifNotNil: self disableMouseEventsForBlock.
	self actionMorph ifNotNil: self disableMouseEventsForBlock.