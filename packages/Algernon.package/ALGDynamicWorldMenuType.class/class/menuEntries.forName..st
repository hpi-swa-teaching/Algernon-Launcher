algertem lists
menuEntries: aMorph forName: menuName

	(menuName = 'Windows')
		ifTrue: [^ self excludeDynamicWindows: aMorph] .

	^ aMorph submorphs