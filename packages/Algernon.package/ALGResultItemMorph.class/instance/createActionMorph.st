initialization
createActionMorph
	^ TextMorph new
		contents: (self item defaultAlgeraction name asText addAttribute: TextAlignment rightFlush);
		 textColor: self class actionTextColor;
		
		font: (TextStyle default fontOfSize: self class actionFontSize);
		 hide;
		 yourself