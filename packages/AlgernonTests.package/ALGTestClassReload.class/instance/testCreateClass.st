testing
testCreateClass
	
	self deny: (self existsInResults: className).
	self createClass.
	ALGItemProvider lastDefaultItemUpdateTimeStamp: (TimeStamp current minusSeconds: ALGItemProvider defaultItemUpdateInterval).
	World doOneCycle.
	self assert:(self existsInResults: className).	
