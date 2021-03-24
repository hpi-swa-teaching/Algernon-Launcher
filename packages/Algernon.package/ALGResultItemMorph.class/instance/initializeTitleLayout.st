initialization
initializeTitleLayout
	self titleMorph: (TextMorph new contents: self contents;
			 textColor: self class titleColor;
		 	 readOnly: true;
			 yourself).
	self
		addMorph: self titleMorph
		fullFrame: (self layoutFrameFor: #TitleMorph)