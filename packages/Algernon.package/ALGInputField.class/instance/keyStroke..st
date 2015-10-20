event handling
keyStroke: evt

	self editor selectFrom: self contents size+1 to: self contents size.
	super keyStroke: evt.