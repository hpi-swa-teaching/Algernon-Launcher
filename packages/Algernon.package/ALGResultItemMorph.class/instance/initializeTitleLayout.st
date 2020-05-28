initialization
initializeTitleLayout
	self extent: self menuMorph width @ self class titleHeight.
	self titleMorph: (TextMorph new contents: self contents;
			 textColor: self class titleColor;
			 "font: self fontToUse;"
			 yourself).
	self addMorph: self titleMorph
		fullFrame: (LayoutFrame
				fractions: (0.005 @ 0 corner: 0.75 @ 1)).