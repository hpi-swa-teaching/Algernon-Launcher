export
sarFromPackage: package
	| mczStream version workingCopy zip |
	
	zip := ZipArchive new.
	mczStream := RWBinaryOrTextStream on: (String new: 10000).
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
	version := workingCopy
		newVersionWithName: package, '-export', Time current asSeconds
		message: 'Export ', package, ' as sar'.
	version ifNil: [ ^ self]. "user canceled export"
	version fileOutOn: mczStream.
	(zip addString: mczStream contents as: package , '.mcz') desiredCompressionLevel: 0.
	zip addString: 'self fileInMonticelloZipVersionNamed:
		''' , package , '.mcz''.' as: 'install/preamble'.
	zip addString: 'ALGInstallation instance upgrade. Algernon activateAlgernon: true.'
		as: 'install/postscript'. 
	zip writeToFileNamed: package , '.sar'