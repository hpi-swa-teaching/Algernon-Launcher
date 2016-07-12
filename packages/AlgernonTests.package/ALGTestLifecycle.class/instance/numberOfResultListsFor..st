testing
numberOfResultListsFor: anAlgernon
	
	^ (anAlgernon submorphs select: [ :aMorph | (aMorph isKindOf: ALGResultList) and: [aMorph owner notNil ]]) size