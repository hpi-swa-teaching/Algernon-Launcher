instance creation
createMenuList: aList in: anAlgernon withHeight: anInt
| anActionList |
	anActionList := self new.
	
	anActionList algernon: anAlgernon.
	(aList
		copyFrom: 1
		to: (10 min: aList size))
		do: [:each | anActionList addToMenu: each].
		
	anActionList
		popUpAt: ((anAlgernon center x)) @ (anAlgernon top + anAlgernon height + 8)
		forHand: anAlgernon activeHand
		in: anAlgernon
		allowKeyboard: false.
		
		(anActionList height < anInt) ifTrue: [
		anActionList vResizing: #rigid.
		anActionList height: anInt.	
	].
		
	^ anActionList
