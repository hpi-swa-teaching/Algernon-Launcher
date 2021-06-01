initialization
createNavigationIcon: aSymbol
	
	^ (ALGIconFactory getInstance loadIconFor: aSymbol) asMorph 
			height: self height;
			center: self center.