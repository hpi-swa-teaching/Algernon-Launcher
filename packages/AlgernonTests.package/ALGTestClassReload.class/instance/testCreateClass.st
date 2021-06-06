testing
testCreateClass

	self deny: (self existsInResults: className).
	self createClass.
	self assert:(self existsInResults: className).	
