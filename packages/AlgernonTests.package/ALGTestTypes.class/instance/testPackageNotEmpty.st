testing package type
testPackageNotEmpty

	| packages |
	packages := ALGPackageType algertemList.
	self deny: packages isEmpty.
	