actions
createListOfClassAwareAlgeractions: aMethod
	^ self methodClass
    		ifNil: [ {} ]
    		ifNotNil: [ {
        		self createActionBrowseExistingFor: aMethod .
       		self createActionBrowseNewFor: aMethod        } ]