loading
filenameFor: aSymbol
	^ self class fileMapping at: aSymbol ifAbsent: [ nil ]