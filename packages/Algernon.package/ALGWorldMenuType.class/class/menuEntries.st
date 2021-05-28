algertem lists
menuEntries
	|entries|
	
	entries := OrderedCollection new.	

	((self menus
		collect: [ :each | {each subMenu. each contents} ])
		reject: [ :each | each first isNil ])
		collect: [ :each |
			entries addAll: (
				self extractMenuEntriesFrom: each first withName: each second )
		].
	
	^ entries select: [:each | each isKindOf: MenuItemMorph]
	