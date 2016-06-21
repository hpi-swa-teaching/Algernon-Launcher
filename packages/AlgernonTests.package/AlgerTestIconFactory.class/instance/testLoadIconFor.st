testing
testLoadIconFor

	| iconFactory |
	ALGIconFactory resetInstance.
	iconFactory := ALGIconFactory new.
	ALGIconFactory fileMapping keys do: [:aSymbol | self testLoadIconFor: aSymbol withFactory: iconFactory]