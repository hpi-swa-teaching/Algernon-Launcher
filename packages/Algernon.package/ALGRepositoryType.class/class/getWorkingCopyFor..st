helper
getWorkingCopyFor: aLabel

	^ ((MCWorkingCopyBrowser new workingCopies)
		select: [ :element | (element packageName) = aLabel]) first