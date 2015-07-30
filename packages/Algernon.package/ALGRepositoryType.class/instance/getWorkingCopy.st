accessing
getWorkingCopy
	"Since we only get the label of a package we have to fetch the workingCopy"

	^ ((MCWorkingCopyBrowser new workingCopies)
			select: [ :element | (element packageName) = self repositoryPackage]) at: 1