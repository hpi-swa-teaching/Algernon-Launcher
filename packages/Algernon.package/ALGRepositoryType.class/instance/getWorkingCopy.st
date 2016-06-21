accessing
getWorkingCopy

	^ (MCWorkingCopyBrowser new workingCopies)
			detect: [ :element | element packageName = self repositoryPackage]