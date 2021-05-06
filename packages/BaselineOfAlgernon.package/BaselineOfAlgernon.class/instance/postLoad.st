baseline
postLoad
	Smalltalk globals at: #SwaLint
		ifPresent: [:swalint | swalint perform: #install ].
	"due to changes in the API of the cache, all references to it have to be removed"
	ALGItemProvider allInstances do: [:each | each cache: ALGCache new].
	ALGInstallation instance cleanup.
	ALGCore activateAlgernon: true.
	UserDialogBoxMorph
		inform: 'Algernon ist jetzt verfügbar'
		title: 'Algernon installiert'.