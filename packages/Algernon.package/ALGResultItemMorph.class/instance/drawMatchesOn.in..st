drawing
drawMatchesOn: aCanvas in: aRectangle

	| startX |
	startX := aRectangle origin x.
	1 to: self abbreviatedString size do: [ :i |
		startX := self drawCharAt: i in: aRectangle on: aCanvas start: startX ]