system updates
systemChanged: evt
	self wasChanged ifFalse: [
		self wasChanged: true.
		self showRefreshLabel].