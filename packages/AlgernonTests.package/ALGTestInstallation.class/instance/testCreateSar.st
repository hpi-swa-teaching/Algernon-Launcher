testing
testCreateSar

	| installation directory |
	directory := FileDirectory default.
	
	(directory fileExists: 'Algernon.sar')
		ifTrue: [directory rename: 'Algernon.sar' toBe: 'Algernon.sar.test.bak' ].
	
	installation := ALGInstallation new.
	installation sarFromPackage: 'Algernon'.
	self assert: (directory fileExists: 'Algernon.sar').
	directory deleteFileNamed: 'Algernon.sar'.
	
	(directory fileExists: 'Algernon.sar.test.bak')
		ifTrue: [directory rename: 'Algernon.sar.test.bak' toBe: 'Algernon.sar' ].
	