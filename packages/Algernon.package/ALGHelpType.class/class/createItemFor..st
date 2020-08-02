instance creation
createItemFor: aHelpTextAssoc
	^ ALGItem withAlgertype: (self withKeyword: aHelpTextAssoc key text: aHelpTextAssoc value)