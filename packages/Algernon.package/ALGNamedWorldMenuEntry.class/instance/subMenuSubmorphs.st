accessing
subMenuSubmorphs

	|submorphs|
	submorphs := OrderedCollection new.
	(self menuSubmorphs select: [:menuSubmorph | (menuSubmorph externalName = 'line') not])
							collect: [:menuSubmorph | menuSubmorph subMenu ifNotNil: 
									[submorphs addAll: menuSubmorph subMenu submorphs]        ].
	^ submorphs