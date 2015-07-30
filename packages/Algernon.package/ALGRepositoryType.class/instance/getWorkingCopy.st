accessing
getWorkingCopy

	^ ((MCWorkingCopyBrowser new workingCopies)
			select: [ :element | (element packageName) = self repositoryPackage]) at: 1