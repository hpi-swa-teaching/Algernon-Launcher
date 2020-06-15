instance creation
algertemList
	^ SystemNavigation allImplementedMessages
		collect: [:each | ALGItem
				withAlgertype: (self with: each)]