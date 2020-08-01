initialization
createChildrenIndicatorMorph
	^ (ALGIconFactory getInstance loadIconFor: #HasChildren) asMorph height: self class itemHeight;
		 hide