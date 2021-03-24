updating
updateItemListWith: aString
	| results |
	self itemProvider yieldTop: (self notInChild and: [self textField isEmpty]) not.
	results := self itemProvider resultsFor: aString.
	"(results isEmpty) ifTrue: [ ^ self ]."
	self hideItemList.
	self itemList: (ALGResultList newFrom: results in: self).
	self itemList popup