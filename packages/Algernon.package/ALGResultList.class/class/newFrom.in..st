instance creation
newFrom: aCollection in: aController

	| anItemList |
	anItemList := self new.
	anItemList
		controller: aController;
		updateWith: aCollection.
	^ anItemList