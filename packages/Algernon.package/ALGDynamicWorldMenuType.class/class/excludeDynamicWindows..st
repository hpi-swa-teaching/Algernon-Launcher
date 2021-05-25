helpers
excludeDynamicWindows: aMorph

	|lineMorph|
	
	lineMorph := aMorph submorphs detect:  [:subMorph | subMorph externalName = 'line'].
	^ aMorph submorphs copyAfter: lineMorph
