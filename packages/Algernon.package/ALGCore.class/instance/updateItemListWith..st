updating
updateItemListWith: aString
	"Refreshes the visible search results."

	| results |
	self itemProvider yieldTop: (self inChild & self textField isEmpty) not.
	results := self itemProvider resultsFor: aString.
	(results isEmpty) ifTrue: [ ^ self ].
	self hideItemList.
	self itemList: (ALGResultList newFrom: results in: self).
	self itemList popup