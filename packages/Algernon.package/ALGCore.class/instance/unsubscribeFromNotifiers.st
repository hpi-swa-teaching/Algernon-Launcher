system
unsubscribeFromNotifiers
	"Migration code for old Algernon instances still subscribed to 
	events that are no longer used"
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.