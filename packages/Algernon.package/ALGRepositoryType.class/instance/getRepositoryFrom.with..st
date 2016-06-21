accessing
getRepositoryFrom: aWorkingCopy with: aLabel

	^ (aWorkingCopy repositoryGroup normalizedRepositories)
		detect: [ :element | element description = aLabel]