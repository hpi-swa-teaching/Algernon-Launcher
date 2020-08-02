initialization
createChildrenIndicatorMorph
	^ (ALGIconFactory getInstance loadIconFor: #HasChildren) asMorph height: self height;
		 hide