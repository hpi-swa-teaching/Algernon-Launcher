algertem lists
menuEntries
	|entries|
	
	entries := OrderedCollection new.	

	((self menus
		collect: [ :each | each subMenu ])
		reject: [ :each | each isNil ])
		collect: [ :each |
			entries addAll: (
				self extractMenuEntriesFrom: each )
		].
	
	^ entries select: [:each | each isKindOf: MenuItemMorph]
	