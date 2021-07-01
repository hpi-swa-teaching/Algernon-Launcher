actions
createListOfClassAwareAlgeractions: aMethod
	methodClass
		ifNil: [^ {}]
		ifNotNil: [^ {self createActionBrowseExistingFor: aMethod. self createActionBrowseNewFor: aMethod}]