status message
removeOldStatusMessage

	(self scroller submorphs
		select: [:submorphs | submorphs isStatus])
		do: [:submorph | submorph abandon]