An ALGItemProvider is responsible for providing and caching the results for a given search term. Every ALGType needs to be registered with this provider in order to make available the system entities it represents.

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
