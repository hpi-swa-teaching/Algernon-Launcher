instance creation
with: aHistorian project: aSquotWorkingCopy asChild: aBoolean

	^ (self with: aHistorian)
			project: aSquotWorkingCopy;
			isChild: aBoolean;
			yourself