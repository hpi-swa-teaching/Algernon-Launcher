running
tearDown
	super tearDown.
	toolWindow ifNotNil: [ toolWindow delete ]