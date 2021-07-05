accessing
ifDynamic: dynamicBlock ifStatic: staticBlock

	^ self isDynamic ifTrue: [dynamicBlock value] ifFalse: [staticBlock value]