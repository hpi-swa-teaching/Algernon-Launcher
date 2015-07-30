actions
save: aRepo withPackage: aPackage

	| mc |
	mc := MCWorkingCopyBrowser new.
	mc workingCopy: aPackage.
	mc repository: aRepo.
	mc saveVersion