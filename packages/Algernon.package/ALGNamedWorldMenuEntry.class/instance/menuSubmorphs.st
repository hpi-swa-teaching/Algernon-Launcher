accessing
menuSubmorphs

	^ (self subMenuIfAbsent: [ ^ OrderedCollection new ]) submorphs
		collect: [ :submorph |
			ALGNamedWorldMenuEntry newFrom: submorph
		]