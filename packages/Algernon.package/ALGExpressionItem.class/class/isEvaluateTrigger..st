constants
isEvaluateTrigger: aTrigger 
	^ (aTrigger beginsWith: '=')
		or: [aTrigger beginsWith: 'do']