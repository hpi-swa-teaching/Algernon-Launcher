testing
testCreateAndDeleteClass
	
	self deny: (self existsInResults: className).
	self createClass.
	self assert: (self existsInResults: className).
	self deleteClass.
	self deny: (self existsInResults: className)
