/datum/map/earth
	name = "Earth"
	full_name = "Earth - The City"
	path = "earth"

	station_name  = "The City"
	station_short = "The City"

	evac_controller_type = /datum/evacuation_controller/lifepods

	radiation_detected_message = "High levels of radiation have been detected near the surface of %STATION_NAME%. Please move to a shielded area."

	allowed_spawns = list(/decl/spawnpoint/cryo)
	default_spawn = /decl/spawnpoint/cryo
	shuttle_docked_message = "The shuttle has docked."
	shuttle_leaving_dock = "The shuttle has departed from home dock."
	shuttle_called_message = "A scheduled transfer shuttle has been sent."
	shuttle_recall_message = "The shuttle has been recalled"
	emergency_shuttle_docked_message = "The emergency escape shuttle has docked."
	emergency_shuttle_leaving_dock = "The emergency escape shuttle has departed from %dock_name%."
	emergency_shuttle_called_message = "An emergency escape shuttle has been sent."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled"

	lobby_screens = list(
		'maps/earth/lobby/earthTitle.gif'
	)
	lobby_tracks = list(
		/decl/music_track/inorbit
	)

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

/datum/map/earth/get_map_info()
	return "Earth. The final frontier."
