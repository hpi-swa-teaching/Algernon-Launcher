updating
removeAllSubmorphs
	self submorphs
		do: [:submorph | self submorphs remove: submorph]