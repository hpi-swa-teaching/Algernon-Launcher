testing appereance
testResultListDynamicallyChangesHeight

	| height1 height2 |
	self runQuery: 'ALG'.
	height1 := self algInstance itemList height.
	self runQuery: 'abcdefghijklmnopqrstuvwxyz123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'.
	height2 :=  self algInstance itemList height.
	self assert: height1 > height2.