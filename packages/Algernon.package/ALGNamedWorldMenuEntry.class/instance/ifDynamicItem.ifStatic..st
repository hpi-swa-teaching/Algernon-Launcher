accessing
ifDynamicItem: dynamicBlock ifStatic: staticBlock

	^ self isDynamicItem ifTrue: [dynamicBlock value] ifFalse: [staticBlock value]