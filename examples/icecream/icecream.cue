package icecream

// these are the allowed flavors, must pick one of these
#AllowedIceCreamOption:
	"chocolate" |
	"vanilla" |
	"strawberry" |
	"mango"

// this is the order of choice of allowed options
KidsPrefs: [
	"strawberry",
	"vanilla",
	"mango",
]

// this is what the market has
MarketSelection: #AvailableIceCreamQuantities & {
	"strawberry": 0
	"vanilla":    1
	"rocky_road": 100
	"mango":      2
}
// needs to also handle missing keys, negative values, too large values (errors)

// this is extra, but will filters the market, to what's actually an option
ActualMarketOptions: {
	for ic, qty in MarketSelection
	let isAllowed = ((#AllowedIceCreamOption & ic) != _|_ )
	if ( isAllowed && qty > 0 ) {
		"\(ic)": true
	}
}

// kid can only pick allowed where qty > 1
KidsActualMarketOptionsRanked: [
	// loop the preferences in order
	for _, ic in KidsPrefs
	if (ActualMarketOptions[ic] != _|_) {
		"\(ic)"
	},
]

// finally, this picks out the final choise
KidsChosenIceCream?: KidsActualMarketOptionsRanked[0]

// this constrains the kid to only choosing allowed options
KidsPrefs: [...#AllowedIceCreamOption]

// the quantities the store provides are only the allowed ones (for now)
#AvailableIceCreamQuantities: [flavor=#AnyIceCreamOption]: #IceCreamQuantity

// only whole numbers here and only positive between 0 and 100
#IceCreamQuantity: int & >=0 & <=100

// these are all of the flavors
#AnyIceCreamOption:
	"chocolate" |
	"vanilla" |
	"strawberry" |
	"rocky_road" |
	"mango"

// these are not necessary, but wanted to show how to weight descending
// for more advanced weighting calculations
// kidsPrefsLen: len(KidsPrefs)
// kidsPrefsWeighted: {
// 	for idx, ic in KidsPrefs {
// 		"\(ic)": (kidsPrefsLen - idx)
// 	}
// }
