algertem lists
menuEntries: aNamedWorldMenuEntry

	(aNamedWorldMenuEntry name = 'Windows')
		ifTrue: [^ self excludeDynamicWindows: aNamedWorldMenuEntry morph] .

	^ aNamedWorldMenuEntry morph submorphs