initialization
packIconsIntoMorph: aMorphCollection

	^ Morph new
			color: Color transparent;
			addAllMorphsBack: aMorphCollection;
			hide.