initialization
initializeIcons
	"| childrenIcon |"
	(self isTitle) ifTrue: [ ^ self ].
	self icon: (ALGIconFactory getInstance iconFor: self item).
	"self indicators add: (ALGIconFactory getInstance loadIconFor: #TopResult)."
	"childrenIcon := ImageMorph new.
	childrenIcon image: (ALGIconFactory getInstance loadIconFor: #HasChildren).
	childrenIcon position: ((self menuMorph right - ALGIconFactory iconSize x) @ self center y).
	self addMorphBack: childrenIcon."