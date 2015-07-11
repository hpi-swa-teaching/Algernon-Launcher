as yet unclassified
loadImage: algerType
	| fileName |
	
	fileName := self class fileMapping at: algerType.
	self imagesMap at: algerType put: (Form fromFileNamed: fileName).