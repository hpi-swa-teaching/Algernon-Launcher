initialization
initializeItemLayoutName
	self nameMorph: (TextMorph new contentsWrapped: self contents;
			 readOnly: true;
			 textColor: self class normalTextColor;
			 yourself).
	self addMorph: self nameMorph
		fullFrame: (self layoutFrameFor: #NameMorph).
	self nameMorph vResizing: #shrinkWrap