testing system command
testSystemCommandDo
	| called |
	called:=false.
	(ALGSystemCommandType new: 'test' commandBlock: [called:=true]) doCommand.
	self assert: called.