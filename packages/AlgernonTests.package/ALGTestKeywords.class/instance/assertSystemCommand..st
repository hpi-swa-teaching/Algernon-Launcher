helpers
assertSystemCommand: aCommand
	self runQuery: aCommand.
	self assert: (self typeNameOfFirstResult = 'SystemCommand').
	self assert: (self nameOfFirstResult = aCommand)