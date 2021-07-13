accessing
menuSubmorphs

	| subMenu |
	
	subMenu := self subMenuIfAbsent: [ ^ OrderedCollection new ].
	
	self ifDynamicMenu: [subMenu updateMenu].
	^ OrderedCollection newFrom: subMenu submorphs