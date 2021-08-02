testing method type
testClassMethodsAreFoundInClassSearch
	| classMethod |
	self runQuery: 'ALGCore' withCursorAt: 'Class'.
	self algInstance showChildList.
	classMethod := 'cleanup'.
	self runQuery: classMethod.
	self assert: (self resultsIncludeName: ALGMethodType prefixForClassMethods, classMethod)