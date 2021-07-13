algertem lists
algertemList
	^ SystemNavigation allImplementedMessages
		collect: [:each | ALGItem
				withAlgertype: (self with: each)]