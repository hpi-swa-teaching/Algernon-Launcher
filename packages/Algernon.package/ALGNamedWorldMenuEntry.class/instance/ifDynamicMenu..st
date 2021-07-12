accessing
ifDynamicMenu: aBlock

	^ self isDynamicMenu ifTrue: [aBlock value]