instance creation
newFrom: aCollection in: anAlgernon
	"Constructs an ItemList from a collection of Algercats."
	| anItemList |
	anItemList := self new.
	anItemList algernon: anAlgernon.
	aCollection copy do: [ :anAlgercat |
		anItemList addCategory: anAlgercat.
		anAlgercat algertems do: [ :anAlgertem |
			anItemList addToMenu: anAlgertem ]].
	^ anItemList