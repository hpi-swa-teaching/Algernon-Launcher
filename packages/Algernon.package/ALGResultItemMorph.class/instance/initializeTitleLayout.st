initialization
initializeTitleLayout
	self titleMorph: (TextMorph new contents: self contents;
			 textColor: self class titleColor;
			 yourself).
	self
		addMorph: self titleMorph
		fullFrame: (self layoutFrameFor: #TitleMorph)