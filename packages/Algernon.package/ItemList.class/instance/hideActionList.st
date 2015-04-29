actions
hideActionList
	actionList ifNotNil: [
		actionList delete.
		actionList := nil.
		].
	self vResizing: #shrinkWrap.
