constants
maxNumItems
	"Dynamically determine the number of items that fits on the screen."

	| offset availableSpace |
	offset := (World height / 3) asInteger.
	availableSpace := World bottom - ALGCore defaultPosition y - offset.
	^ (availableSpace / ALGResultItemMorph titleHeight) asInteger