algertem lists
getHistoriansFor: aSquotWorkingCopy

	ALGRemoteBranch ifNotNil: [^ {ALGRemoteBranch}].

	^ aSquotWorkingCopy repository remoteHistorians