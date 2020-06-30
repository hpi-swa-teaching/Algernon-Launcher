testing
testClear
	self assert: self cache notEmpty.
	self cache clear.
	self assert: self cache isEmpty