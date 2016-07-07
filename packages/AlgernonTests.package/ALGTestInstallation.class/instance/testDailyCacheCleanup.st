testing
testDailyCacheCleanup

	| installation |
	installation := ALGInstallation new.
	installation lastCleanupDate: Date yesterday.
	installation cleanupIfNewDay.
	self assert: Date today equals: installation lastCleanupDate