actions
open: aRepo

	| mc |
	self halt.
	mc := MCWorkingCopyBrowser new.
	mc repository: aRepo.
	mc openRepository