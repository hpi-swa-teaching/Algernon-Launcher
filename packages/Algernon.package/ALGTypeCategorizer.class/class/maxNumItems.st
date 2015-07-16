constants
maxNumItems
	| offset availableSpace |
	offset := (World height / 4) asInteger.
	availableSpace := World bottom - ALGCore defaultPosition y - offset.
	^ (availableSpace / ALGResultItemMorph titleHeight) asInteger