initialization
createChildrenIndicatorMorph
	^ ((ALGIconFactory getInstance loadIconFor: #HasChildren)
		scaledToSize: ALGIconFactory iconSize) asMorph height: self height;
		 hide