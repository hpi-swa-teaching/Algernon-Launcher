actions
open: aRepo

	| mc |
	mc := MCWorkingCopyBrowser new.
	mc repository: aRepo.
	mc openRepository