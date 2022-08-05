initialization
initializeKeywords
	self keywords: Set new.
	ALGItemFilter subclassesDo: [:subclass | 
		 subclass keywords do: [:keyword |
			self keywords addIfNotPresent: keyword]]