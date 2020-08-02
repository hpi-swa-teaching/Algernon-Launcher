An ALGItemProvider is responsible for providing and caching the results for a given search term. Every ALGType needs to be registered with this provider in order to make available the system entities it represents.

Note that the item provider keeps two caches. One for all items matching a search term. This one is used to make subsequent queries faster. For example when you search ALG and then ALGCore the results of the first query will be used to calculate the result of the second instead of searching through all items. The second cache maintains only the displayed items for each query. This is faster as it does not need re-sorting, but only works for exact hits.

Instance Variables
	cache:				ALGCache 			caches results for given search terms
	controller:			ALGController 		reference to ALGController
	items:				Collection 			a pool of ALGItem that a subset of results is returned from
	parentItem:			ALGItem 			current parent used to generate action items
	searchLevel:		Integer 			the depth of the item hierarchy
	sorter:				ALGSorter 			used to sort the provided results by rank
	topCategorizer:	ALGCategorizer 	used to categorize results
	typeCategorizer:	ALGCategorizer 	used to categorize results
	yieldTop:			Boolean 			whether an ALGCategory for top results should be returned
