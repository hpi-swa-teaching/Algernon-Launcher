testing
testCreateSar
	| sarFileName shouldBackup dir |
	dir := FileDirectory default.
	sarFileName := 'Algernon.sar'.
	shouldBackup := dir fileExists: sarFileName.
	shouldBackup
		ifTrue: [dir rename: sarFileName toBe: sarFileName + '.bak'].
	ALGInstallation new sarFromPackage: 'Algernon'.
	self assert: (dir fileExists: sarFileName).
	dir deleteFileNamed: sarFileName.
	shouldBackup
		ifTrue: [dir rename: sarFileName + '.bak' toBe: sarFileName]