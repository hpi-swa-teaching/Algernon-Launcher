initialization
initialize

	super initialize.
	self cache: ALGCache new;
		sorter: ALGSmartSorter new;
		topCategorizer: ALGTopCategorizer new;
		typeCategorizer: ALGTypeCategorizer new;
		items: self defaultItems.