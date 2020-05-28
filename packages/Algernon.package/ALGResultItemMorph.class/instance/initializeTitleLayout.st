initialization
initializeTitleLayout
	self titleMorph: (TextMorph new contents: self contents;
			 textColor: self class titleColor;
			 "font: self fontToUse;"
			 yourself).
	self addMorph: self titleMorph
		fullFrame: (LayoutFrame
				fractions: (0.005 @ 0 corner: 0.75 @ 1)).