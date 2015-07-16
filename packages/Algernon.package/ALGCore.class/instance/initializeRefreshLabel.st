initialization
initializeRefreshLabel
	refreshLabel := TextMorph new
		contents: 'Updating';
		center: (self center x)@((self center y)-40);
		color: Color red;
		backgroundColor: nil;
		hasDropShadow: false;
		borderWidth: 0.