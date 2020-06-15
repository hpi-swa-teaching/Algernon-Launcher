initialization
createActionMorph
	^ TextMorph new
		contentsWrapped: (self item defaultAlgeraction name asText addAttribute: TextAlignment rightFlush);
		textColor: self class actionTextColor;
		font: (TextStyle default fontOfPointSize: self class actionFontSize);
		hide;
		yourself