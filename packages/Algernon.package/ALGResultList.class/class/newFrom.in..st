instance creation
newFrom: aCollection in: anAlgernon
	"Constructs an ItemList from a collection of Algercats."
	| anItemList |
	anItemList := self new.
	anItemList
		algernon: anAlgernon;
		updateWith: aCollection.
	^ anItemList