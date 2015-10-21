as yet unclassified
testPackageNotEmpty

	| packages |
	packages := ALGPackageType algertemList.
	self deny: packages isEmpty.
	