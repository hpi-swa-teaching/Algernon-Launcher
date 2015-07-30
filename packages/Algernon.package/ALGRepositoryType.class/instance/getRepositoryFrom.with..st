accessing
getRepositoryFrom: aWorkingCopy with: aLabel

	^ ((aWorkingCopy repositoryGroup normalizedRepositories)
		select: [ :element | (element description) = aLabel]) at: 1