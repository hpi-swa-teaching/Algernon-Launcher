testing
testUpgrade

	| installation |
	installation := ALGInstallation new.
	installation versionNumber: installation latestVersion - 1.
	installation upgrade.
	self assert: installation versionNumber equals: installation latestVersion