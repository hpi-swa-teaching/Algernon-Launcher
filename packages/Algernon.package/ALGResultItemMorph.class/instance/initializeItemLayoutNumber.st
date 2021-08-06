initialization
initializeItemLayoutNumber
	| morphContent |
	morphContent := self index < 10 ifTrue: [ self index asString ] ifFalse: [ ' ' ].
	self numberMorph: (TextMorph new contentsWrapped: morphContent;
			 readOnly: true;
			 textColor: self class lightTextColor;
			 yourself).
	self addMorph: self numberMorph
		fullFrame: (self layoutFrameFor: #NumberMorph).
	self numberMorph vResizing: #shrinkWrap