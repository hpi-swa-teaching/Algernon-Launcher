accessing
menuSubmorphs

	| subMenu |
	
	subMenu := self subMenuIfAbsent: [ ^ OrderedCollection new ].
	
	self ifHasDynamicMenu: [subMenu updateMenu].
	^ OrderedCollection newFrom: subMenu submorphs