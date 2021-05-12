testing appereance
testResultListChangesSize

	| height1 height2 |
	
	self runQuery: 'ALG'.
	height1 := self algInstance submorphs first height.
	
	self runQuery: 'abcdefghijklmnopqrstuvwxyz123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'.
	[	(10 milliSeconds) wait.
		height2 :=  self algInstance submorphs first height.
		self assert: height1 > height2.							] fork.