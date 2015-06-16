rendering
popUpAt:  aLocation forHand: aHand in: aMorph allowKeyboard: aBool 
	super popUpAt:  aLocation forHand: aHand in: aMorph allowKeyboard: aBool.
	typeList popUpAt:  ((aLocation x) +( (self width)/2)) @( (aLocation y)) in: aMorph.