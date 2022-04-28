updating
removeAllSubmorphs
	self scroller submorphs
		do: [:submorph | self scroller submorphs remove: submorph]