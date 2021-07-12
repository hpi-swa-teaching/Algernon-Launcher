accessing
ifDynamicMenu: dynamicBlock ifStatic: staticBlock

	^ self isDynamicMenu ifTrue: [dynamicBlock value] ifFalse: [staticBlock value]