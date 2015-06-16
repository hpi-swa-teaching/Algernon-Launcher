rendering
showActionListIn: aMorph
	|sortedAlgeractions|
	sortedAlgeractions := self algernon sorter sort:self selectedAlgernonListItem algeractions.
	actionList ifNil:[actionList := ALGActionList createMenuList: sortedAlgeractions in: aMorph withHeight:self height.].
	(self height < actionList height) ifTrue: [
		self vResizing: #rigid.
		self height: actionList height.	
	].
	
