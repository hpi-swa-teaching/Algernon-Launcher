testing appereance
testResultListEnsureVisible

	| resultList firstItem lastItem |
	self runQuery: 'ALG'.
	resultList := self algInstance itemList.
	firstItem := self itemMorphs first.
	lastItem := self itemMorphs last.
	
	self assert: (resultList fullBoundsInWorld containsPoint: firstItem fullBoundsInWorld center).
	self deny: (resultList fullBoundsInWorld containsPoint: lastItem fullBoundsInWorld center).
	resultList ensureVisible: lastItem.
	self assert: (resultList fullBoundsInWorld containsPoint: lastItem fullBoundsInWorld center).
	self deny: (resultList fullBoundsInWorld containsPoint: firstItem fullBoundsInWorld center)