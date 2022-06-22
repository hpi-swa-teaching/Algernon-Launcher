initialization
initializeTitleLayout
	self titleMorph: (TextMorph new contentsWrapped: self contents;
			 textColor: self class titleColor;
		 	 readOnly: true;
			 yourself).
	self
		addMorph: self titleMorph
		fullFrame: (self layoutFrameFor: #TitleMorph).
	self titleMorph vResizing: #shrinkWrap.
	
	(self contents beginsWith: 'ERROR:')
		ifTrue: [self titleMorph textColor: self class errorColor]