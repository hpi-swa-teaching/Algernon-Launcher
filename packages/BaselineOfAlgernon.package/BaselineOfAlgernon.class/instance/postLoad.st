baseline
postLoad
	(Smalltalk globals at: #SwaLint) perform: #install.
	"due to changes in the API of the cache, all references to it have to be removed"
	ALGItemProvider allInstances do: [:each | each cache: ALGCache new]
	ALGInstallation instance cleanup.