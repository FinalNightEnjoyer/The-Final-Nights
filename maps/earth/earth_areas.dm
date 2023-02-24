//
// Outpost Interior
//
/area/earth
	name = "DONT USE ME"
	icon_state = "toilet"
	has_gravity = TRUE
	power_equip = TRUE
	power_light = TRUE
	power_environ = TRUE
	requires_power = FALSE
	area_flags = AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED
	base_turf = /turf/exterior/dirt

/area/earth/outpost
	name = "Outpost"

/area/earth/outpost/sleeproom
	name = "Cyrogenic Storage"
	icon_state = "cryo"

/area/earth/outpost/hallway
	name = "Hallways"
	icon_state = "hallC1"

/area/earth/outpost/computer
	name = "Computer Room"
	icon_state = "green"

/area/earth/outpost/it
	name = "Server Room"
	icon_state = "server"

/area/earth/outpost/mining
	name = "Ore Processing Room"
	icon_state = "green"

/area/earth/outpost/cloning
	name = "Cloning Room"
	icon_state = "green"

/area/earth/outpost/infirmary
	name = "Infirmary"
	icon_state = "medbay"

/area/earth/outpost/infirmary/exam
	name = "Examination Room"
	icon_state = "exam_room"

/area/earth/outpost/infirmary/surgery
	name = "Surgery Room"
	icon_state = "surgery"

/area/earth/outpost/infirmary/storage
	name = "Storage Room"
	icon_state = "storage"

/area/earth/outpost/solar_array
	name = "Solar Maintenance"
	icon_state = "SolarcontrolS"

/area/earth/outpost/mess_hall
	name = "Mess Hall"
	icon_state = "crew_quarters"

/area/earth/outpost/custodial
	name = "Custodial Cabinet"
	icon_state = "janitor"

/area/earth/outpost/hydroponics
	name = "Hydroponics"
	icon_state = "hydro"

/area/earth/outpost/washroom
	name = "Washroom"
	icon_state = "restrooms"

/area/earth/outpost/cargo
	name = "Cargo Office"
	icon_state = "quart"

/area/earth/outpost/cargo/warehouse
	name = "Warehouse"
	icon_state = "quartstorage"

/area/earth/atmos_pump
	name = "Atmospheric Exchanger"
	icon_state = "atmos"
	is_outside = OUTSIDE_YES

//
// Planet Exterior
//
/area/exoplanet/earth
	name = "earth"
	icon_state = "green"
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED | AREA_FLAG_EXTERNAL
	base_turf = /turf/exterior/dirt
	open_turf = /turf/exterior/dirt //For now
	is_outside = OUTSIDE_YES
	has_gravity = TRUE
	power_equip = TRUE
	power_light = TRUE
	power_environ = TRUE
	requires_power = FALSE

/area/exoplanet/earth/sky
	name = "Up Above"
	icon_state = "blueold"
	base_turf = /turf/exterior/open
	open_turf = /turf/exterior/open

/area/exoplanet/earth/mines
	name = "Deep Underground"
	icon_state = "cave"
	ignore_mining_regen = TRUE
	is_outside = OUTSIDE_NO
	base_turf = /turf/exterior/barren
	open_turf = /turf/exterior/open
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT | AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED

/area/exoplanet/earth/mines/depth_1
	icon_state = "cave"
	ignore_mining_regen = FALSE

/area/exoplanet/earth/mines/depth_2
	name = "Deepest Underground"
	icon_state = "cave"
	ignore_mining_regen = FALSE

/area/exoplanet/earth/mines/exits
	name = "Mine Exit"
	icon_state = "exit"
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED

/area/exoplanet/earth/supply_shuttle_dock
	name = "Supply Shuttle Dock"
	icon_state = "yellow"
	base_turf = /turf/simulated/floor/plating //Needed for shuttles
	open_turf = /turf/exterior/barren
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT | AREA_FLAG_IS_BACKGROUND | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED | AREA_FLAG_EXTERNAL
