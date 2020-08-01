algertem lists
algertemList
	
	^ MCWorkingCopyBrowser new workingCopies
		collect: [:each | ALGItem withAlgertype: (self with:each packageName) ]