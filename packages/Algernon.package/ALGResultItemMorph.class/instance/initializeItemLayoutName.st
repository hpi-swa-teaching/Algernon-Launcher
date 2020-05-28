initialization
initializeItemLayoutName
	self nameMorph: (TextMorph new contents: self contents;
			 textColor: self class normalTextColor;
			 yourself).
	self
		addMorph: self nameMorph
		fullFrame: (LayoutFrame
				fractions: (0.055 @ 0 corner: 0.75 @ 1)).
	self nameMorph vResizing: #shrinkWrap