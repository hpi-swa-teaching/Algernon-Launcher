initialization
initialize
	super initialize.
	self cornerStyle: #square.
	self hResizing: #rigid.
	self vResizing: #shrinkWrap.
	self width: 200.
	self borderWidth: 0.
	self shadowOffset: 0@0. 
	self color: Color gray.
	
	self layoutPolicy: TableLayout new.
	self listDirection: #topToBottom.
	self cellPositioning: #topRight.
	self listCentering: #topLeft.
	self cellInset: 0@0.
	self layoutInset: -5@0.
	self minCellSize: 200@(ALGItemList categoryFontSize * 1.5).