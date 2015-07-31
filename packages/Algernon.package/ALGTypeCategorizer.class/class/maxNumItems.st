constants
maxNumItems

	| offset availableSpace |
	offset := (World height / 3) asInteger.
	availableSpace := World bottom - ALGCore defaultPosition y - offset.
	^ (availableSpace / ALGResultItemMorph titleHeight) asInteger