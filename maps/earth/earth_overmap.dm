// These defines are moved here, as we don't want this to generate or require these paths when testing other maps.
/datum/map/earth
	overmap_ids = list(OVERMAP_ID_SPACE = /datum/overmap/earth)

/datum/overmap/earth
	event_areas = 0
	map_size_x = 50
	map_size_y = 50

	var/map_file = "maps/earth/earth-overmap.dmm"

/datum/overmap/earth/generate_overmap()
	testing("Building overmap [name]...")
	SSmapping.increment_world_z_size(/obj/abstract/level_data/overmap)
	assigned_z = world.maxz
	testing("Putting [name] on [assigned_z].")
	maploader.load_map(file(map_file), 1, 1, assigned_z)

	SSmapping.sealed_levels |= assigned_z
	testing("Overmap build for [name] complete.")

/obj/effect/shuttle_landmark/supply/station
	landmark_tag = "nav_cargo_station"
	docking_controller = "cargo_bay"
	base_area = /area/exoplanet/earth/supply_shuttle_dock
	base_turf = /turf/simulated/floor/plating

//supply
/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply"
	warmup_time = 10
	location = 1
	dock_target = "supply_shuttle"
	waypoint_station = "nav_cargo_station"