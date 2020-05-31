initialization
createHasChildrenMorph
	^ ((ALGIconFactory getInstance loadIconFor: #HasChildren)
		scaledToSize: ALGIconFactory iconSize) asMorph height: self class itemHeight;
		 hide