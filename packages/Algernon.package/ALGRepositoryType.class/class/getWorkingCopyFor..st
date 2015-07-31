helper
getWorkingCopyFor: aLabel

	^ ((MCWorkingCopyBrowser new workingCopies)
		select: [ :element | (element packageName) = aLabel]) at: 1