actions
openPackage: aPackage

	| mc workingCopy |
	workingCopy := (MCWorkingCopyBrowser new workingCopies)
		detect: [ :element | (element packageName) = aPackage].
	mc := MCWorkingCopyBrowser new.
	mc 
		show;
		workingCopy: workingCopy