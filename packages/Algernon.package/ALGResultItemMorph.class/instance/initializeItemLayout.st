initialization
initializeItemLayout
	self extent: self menuMorph width @ self class itemHeight.
	
	self nameMorph: (TextMorph new contents: self contents;
			 textColor: self class nonSelectedColor;
			 font: self font;
			 yourself).
	self
		addMorph: self nameMorph
		fullFrame:  (LayoutFrame fractions:  (0@0 corner: 0.7@ 1)).
	self actionMorph: (TextMorph new contents: self item defaultAlgeraction name;
			 textColor: self class nonSelectedColor;
			 font: self font;
			 yourself).
	
	self
		addMorph: self actionMorph
		fullFrame: (LayoutFrame fractions:  (0.8@0 corner: 1@ 1)).
	"self
		addMorph: ((ALGIconFactory getInstance loadIconFor: #HasChildren)
				scaledToSize: ALGIconFactory iconSize) asMorph."
		