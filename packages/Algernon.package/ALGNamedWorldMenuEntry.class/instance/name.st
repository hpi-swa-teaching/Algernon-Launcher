accessing
name

	^ self ifDynamicItem: 
			[ [self morph updateContents] on: MessageNotUnderstood do: [].
			  self morph contents												]
		ifStatic: [ self morph contents ]