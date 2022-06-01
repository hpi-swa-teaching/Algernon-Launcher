helpers
tearDown

	SquotWorkingCopy unregister: self testWorkingCopy.
	self testWorkingCopy: nil.
	
	super tearDown