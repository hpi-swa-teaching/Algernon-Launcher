accessing
hasDynamicMenu

	| subMenu |
	subMenu := self subMenuIfAbsent: [ ^ false ].

	^ (subMenu isKindOf: DockingBarUpdatingMenuMorph) 
		or: [subMenu isKindOf: UpdatingMenuMorph]