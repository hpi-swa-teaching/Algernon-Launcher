loading
loadFromStreamFor: aSymbol

	| stream scaledForm |
	stream := self class fileMapping at: aSymbol ifAbsent: [nil].
	scaledForm := (Form readFrom: stream) scaledToSize: self class iconSize.
	self imagesMap at: aSymbol put: scaledForm.
	^ scaledForm