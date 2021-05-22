helpers
exclude: aMorph withName: menuName

	(menuName = 'Windows')
		ifTrue: [self excludeDynamicWindows: aMorph] 
