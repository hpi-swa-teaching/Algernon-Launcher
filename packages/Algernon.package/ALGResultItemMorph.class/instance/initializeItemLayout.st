initialization
initializeItemLayout
	self hasIcon
		ifTrue: [icon := self icon.
			self
				addMorph: icon asMorph
				fullFrame: (LayoutFrame
						fractions: (0.01 @ 0 corner:0.03 @ 1))].
	self
		addMorph: ((ALGIconFactory getInstance loadIconFor: #HasChildren)
				scaledToSize: ALGIconFactory iconSize) asMorph
		fullFrame: (LayoutFrame
				fractions: (0.95 @ 0 corner: 1 @ 1)).
	self nameMorph: (TextMorph new contents: self contents;
			 textColor: self class normalTextColor;
			 yourself).
	"font: self font;"
	self
		addMorph: self nameMorph
		fullFrame: (LayoutFrame
				fractions: (0.04 @ 0 corner: 0.75 @ 1)).
	self actionMorph: (TextMorph new contents: self item defaultAlgeraction name;
			 textColor: self class normalTextColor;
			 yourself).
	"font: self font;"
	self
		addMorph: self actionMorph
		fullFrame: (LayoutFrame
				fractions: (0.75 @ 0 corner: 0.95 @ 1)).
	self
		addMorph: ((ALGIconFactory getInstance loadIconFor: #HasChildren)
				scaledToSize: ALGIconFactory iconSize) asMorph
		fullFrame: (LayoutFrame
				fractions: (0.95 @ 0 corner: 1 @ 1))