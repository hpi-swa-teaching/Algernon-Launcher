initialization
createActionMorph
	^ TextMorph new contentsWrapped: self createActionNameText;
		 textColor: self class actionTextColor;
		 font: (TextStyle default fontOfPointSize: self class actionFontSize);
		 hide;
		 yourself