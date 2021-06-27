helpers
excludeDynamicWindows

	|lineMorph|
	
	lineMorph := self menuSubmorphs detect:  [:subMorph | subMorph externalName = 'line'].
	^ self menuSubmorphs copyAfter: lineMorph
