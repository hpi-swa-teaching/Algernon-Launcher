loading
loadFromFileFor: aSymbol
	| fileName scaledForm |
	fileName := self filenameFor: aSymbol.
	scaledForm := (Form fromFileNamed: fileName) scaledToSize: self class iconSize.
	self imagesMap at: aSymbol put: scaledForm.
	^ scaledForm