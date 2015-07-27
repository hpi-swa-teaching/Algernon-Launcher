initialization
initialize

	super initialize.
	self cache: ALGCache new;
		sorter: ALGSmartSorter new;
		items: self defaultItems.