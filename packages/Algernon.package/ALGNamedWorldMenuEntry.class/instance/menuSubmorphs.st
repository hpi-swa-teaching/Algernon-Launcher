accessing
menuSubmorphs

	| subMenu morphs |
	
	subMenu := self subMenuIfAbsent: [ ^ OrderedCollection new ].
	morphs := OrderedCollection new.
	
	self ifDynamic: [subMenu updateMenu.
					morphs addAll: subMenu submorphs.
					subMenu removeAllMorphs			 ]
		ifStatic: [morphs addAll: subMenu submorphs].
		
	^ morphs