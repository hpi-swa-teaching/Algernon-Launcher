accessing
sarFromPackage: package
	| mczStream version workingCopy zip |
	
	zip := ZipArchive new.
	mczStream := RWBinaryOrTextStream on: (String new: 10000).
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
	version := workingCopy newVersion.
	version fileOutOn: mczStream.
	(zip addString: mczStream contents as: package , '.mcz') desiredCompressionLevel: 0.
	zip addString: 'self fileInMonticelloZipVersionNamed:
		''' , package , '.mcz''.' as: 'install/preamble'.
	zip addString: 'ALGInstallation instance upgrade.' as: 'install/postscript'. 
	zip writeToFileNamed: package , '.sar'