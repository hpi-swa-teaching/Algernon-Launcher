actions
createListOfClassAwareAlgeractions
	methodClass
		ifNil: [^ {}]
		ifNotNil: [^ {self createActionBrowseExistingFor: self typeObject. self createActionBrowseNewFor: self typeObject}]