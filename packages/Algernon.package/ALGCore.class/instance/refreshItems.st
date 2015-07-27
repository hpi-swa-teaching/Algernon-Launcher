lists
refreshItems
	| isActive |
	isActive := self active.
	self class initializeAlgertems.
	self wasChanged: false.
	self hideRefreshLabel.
	isActive ifTrue: [self activate].