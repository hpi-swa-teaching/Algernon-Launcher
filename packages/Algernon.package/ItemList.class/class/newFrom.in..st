instance creation
newFrom: aDictionary in: anAlgernon
	"Constructs an ItemList from a dictionary of Algertem collections indexed
	by their Algertype."
	| anItemList |
	anItemList := self new.
	anItemList algernon: anAlgernon.
	aDictionary copy keysDo: [ :key |
		| categoryList |
		categoryList := aDictionary at: key.
		anItemList addCategory: key.
		categoryList do: [ :anAlgertem |
			anItemList addToMenu: anAlgertem ]].
	^ anItemList