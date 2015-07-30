actions
openPackage: aPackage

	| mc workingCopy |
	workingCopy := ((MCWorkingCopyBrowser new workingCopies)
		select: [ :element | (element packageName) = aPackage]) at: 1.
	mc := MCWorkingCopyBrowser new.
	mc workingCopy: workingCopy.
	mc browseWorkingCopy