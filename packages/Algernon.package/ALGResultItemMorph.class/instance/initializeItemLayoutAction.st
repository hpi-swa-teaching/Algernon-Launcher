initialization
initializeItemLayoutAction
	| endOfActionText |
	self actionMorph: (TextMorph new
			contents: (self item defaultAlgeraction name asText addAttribute: TextAlignment rightFlush);
			 textColor: self class actionTextColor;
			font: (TextStyle default fontOfSize: 13);
			 hide;
			 yourself).
	self hasChildrenMorph: (((ALGIconFactory getInstance loadIconFor: #HasChildren)
			scaledToSize: ALGIconFactory iconSize) asMorph height: self class itemHeight;
			 hide).
	endOfActionText := 0.97.
	self item algerType hasChildren
		ifTrue: [endOfActionText := 0.94.
			self
				addMorph: self hasChildrenMorph
				fullFrame: (LayoutFrame
						fractions: (endOfActionText + 0.01 @0.22 corner: 0.97 @ 1))].
	self
		addMorph: self actionMorph
		fullFrame: (LayoutFrame
				fractions: (0.75 @ 0 corner: endOfActionText @ 1)).
		self actionMorph vResizing: #shrinkWrap.