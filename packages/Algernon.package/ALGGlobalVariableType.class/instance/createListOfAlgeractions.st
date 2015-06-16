list creation
createListOfAlgeractions
	| list aVar |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aVar := self typeObject value.
	"(aVar respondsTo: #open) ifTrue:[
		list add: (Algeraction withName:'open' 
					rank:5 target:aVar selector:#open args:#()).]."
		list add: (ALGAction withName:'inspect variable' 
					rank:4 target:aVar selector:#inspect args:#()).
	^list.