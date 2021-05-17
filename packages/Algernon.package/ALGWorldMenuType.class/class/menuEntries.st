as yet unclassified
menuEntries

	|entries|
	
	entries := OrderedCollection new.	

	((self menus
		collect: [ :each | each subMenu ])
		reject: [ :each | each isNil ])
		collect: [ :each |
			entries addAll: (
				self filterMenuItems: each )
		].
	
	^ entries select: [:each | each isKindOf: MenuItemMorph]
	