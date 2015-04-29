instance creation
createMenuList: aList in: anAlgernon withHeight: anInt
	| anItemList |
	anItemList := self new.
	anItemList algernon: anAlgernon.
	anItemList height: anInt.
	(aList
		copyFrom: 1
		to: (10 min: aList size))
		do: [:each | anItemList addToMenu: each].
	anItemList
		popUpAt: anAlgernon center x - ((anItemList width)/2) + 2 @ (anAlgernon top + anAlgernon height + 8)
		forHand: anAlgernon activeHand
		in: anAlgernon
		allowKeyboard: false.
		
	^ anItemList