testing
testCreateAndDeleteClass
	
	self deny: (self existsInResults: self className).
	self createClass.
	self assert: (self existsInResults: self className).
	self deleteClass.
	self deny: (self existsInResults: self className)
