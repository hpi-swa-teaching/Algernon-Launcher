testing
testClear
	self assert: self cache allMatchedItems notEmpty.
	self assert: self cache finalResults notEmpty.
	self cache clear.
	self assert: self cache allMatchedItems isEmpty.
	self assert: self cache finalResults isEmpty.