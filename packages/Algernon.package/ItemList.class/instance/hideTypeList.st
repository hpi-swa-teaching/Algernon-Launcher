actions
hideTypeList
	typeList ifNotNil: [
		typeList delete.
		typeList := nil.
		].
