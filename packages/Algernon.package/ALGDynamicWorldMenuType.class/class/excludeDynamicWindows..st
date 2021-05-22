helpers
excludeDynamicWindows: aMorph

	|lineMorph|
	
	lineMorph := aMorph submorphs detect:  [:subMorph | subMorph externalName = 'line'].
	aMorph submorphs removeAll: (aMorph submorphs copyUpTo: lineMorph).
