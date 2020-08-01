accessing
numberOfResultListsFor: anAlgernon
	
	^ (anAlgernon submorphsSatisfying: [ :aMorph | aMorph isKindOf: ALGResultList]) size