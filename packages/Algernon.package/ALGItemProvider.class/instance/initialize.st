initialize-release
initialize

	super initialize.
	self 
		initializeCache;
		sorter: ALGSmartSorter new;
		topCategorizer: ALGTopCategorizer new;
		typeCategorizer: ALGTypeCategorizer new;
		items: self defaultItems;
		subscribeToSystemChangeNotifier