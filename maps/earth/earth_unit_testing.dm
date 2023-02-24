//Add to the default areas
/datum/map/earth/New()
	. = ..()
	area_coherency_test_exempt_areas += /area/earth/atmos_pump
	area_coherency_test_exempt_areas += /area/earth/outpost/cargo/warehouse
	apc_test_exempt_areas[/area/earth/atmos_pump] = NO_SCRUBBER|NO_APC //Area meant to fool unit tests, because they're being a bit assinine
	apc_test_exempt_areas[/area/earth/outpost/it] = NO_SCRUBBER|NO_VENT
	apc_test_exempt_areas[/area/earth/outpost/solar_array] = NO_SCRUBBER|NO_VENT