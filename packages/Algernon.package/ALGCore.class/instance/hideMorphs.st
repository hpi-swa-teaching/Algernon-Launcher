visibility
hideMorphs

	self textField hide.
	self hideItemList.
	self breadcrumbs hide.
	self background hide.
	self hide.
	"This is a workaround until caching & refreshing is implemented properly"
	ALGInstallation instance cleanupIfNewDay