testing appereance
testResultListDynamicallyChangesHeight

	| height1 height2 |
	self runQuery: 'ALG'.
	height1 := self algInstance itemList height.
	Transcript showln: 'List Dynamic Height'.
	Transcript showln: height1.
	self runQuery: 'abcdefghijklmnopqrstuvwxyz123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'.
	height2 :=  self algInstance itemList height.
	Transcript showln: 'x-x-x-x-x-x-x'.
	Transcript showln: height1.
	Transcript showln: height2.
	self assert: height1 > height2.