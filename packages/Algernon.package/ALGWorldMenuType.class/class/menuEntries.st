as yet unclassified
menuEntries
	|entries|
	
	entries := OrderedCollection new.	

	((self menus
		collect: [ :each | each subMenu ])
		reject: [ :each | each isNil ])
		collect: [ :each |
			(each isKindOf: DockingBarUpdatingMenuMorph) 
				ifTrue: [
						each updateMenu. 
						entries addAll: each submorphs.
						each removeAllMorphs				]
				ifFalse: [ entries addAll: each submorphs ]
		].
	
	^ entries select: [:each | each isKindOf: MenuItemMorph]
	
