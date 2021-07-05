accessing
isDynamic

	^ (self subMenuIfAbsent: [ ^ false ])
		isKindOf: DockingBarUpdatingMenuMorph