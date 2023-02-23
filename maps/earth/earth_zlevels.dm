/datum/map/earth
#ifndef UNIT_TEST
	// station_levels = list(1, 2, 3, 4)
	// contact_levels = list(1, 2, 3, 4)
	// player_levels = list(1, 2, 3, 4)
	// saved_levels = list(3, 4)
	// mining_levels = list(1, 2)

	// Hotloading module
	default_levels = list(
		"1" = "maps/earth/earth-1.dmm",
		"2" = "maps/earth/earth-2.dmm",
		"3" = "maps/earth/earth-3.dmm",
		"4" = "maps/earth/earth-4.dmm",
		"5" = "maps/utility/cargo_shuttle_tmpl.dmm",
	)

	// A list of turfs and their default turfs for serialization optimization.
	// base_turf_by_z = list(
	// 	"1" = /turf/exterior/barren/mining,
	// 	"2" = /turf/exterior/barren/mining,
	// 	"3" = /turf/exterior/earth_grass,
	// 	"4" = /turf/exterior/open,
	// 	"5" = /turf/space,
	// )
#else
	// station_levels = list(4, 5, 6, 7)
	// contact_levels = list(4, 5, 6, 7)
	// player_levels = list(4, 5, 6, 7)
	// saved_levels = list(6, 7)
	// mining_levels = list(4, 5)

	default_levels = list(
		"4" = "maps/earth/earth-1.dmm",
		"5" = "maps/earth/earth-2.dmm",
		"6" = "maps/earth/earth-3.dmm",
		"7" = "maps/earth/earth-4.dmm",
		"8" = "maps/utility/cargo_shuttle_tmpl.dmm",
	)

	// A list of turfs and their default turfs for serialization optimization.
	// base_turf_by_z = list(
	// 	"4" = /turf/exterior/barren/mining,
	// 	"5" = /turf/exterior/barren/mining,
	// 	"6" = /turf/exterior/earth_grass,
	// 	"7" = /turf/exterior/open,
	// 	"8" = /turf/space,
	// )
#endif
