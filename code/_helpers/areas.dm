/*
	List generation helpers
*/
/proc/get_filtered_areas(var/list/predicates = list(/proc/is_area_with_turf))
	. = list()
	if(!predicates)
		return
	if(!islist(predicates))
		predicates = list(predicates)
	for(var/area/A)
		if(all_predicates_true(list(A), predicates))
			. += A

/proc/get_area_turfs(var/area/A, var/list/predicates)
	. = new/list()
	A = istype(A) ? A : locate(A)
	if(!A)
		return
	for(var/turf/T in A.contents)
		if(!predicates || all_predicates_true(list(T), predicates))
			. += T

/proc/group_areas_by_name(var/list/predicates)
	. = list()
	for(var/area/A in get_filtered_areas(predicates))
		group_by(., A.proper_name, A)

/proc/group_areas_by_z_level(var/list/predicates)
	. = list()
	var/enough_digits_to_contain_all_zlevels = 3
	for(var/area/A in get_filtered_areas(predicates))
		group_by(., add_zero(num2text(A.z), enough_digits_to_contain_all_zlevels), A)

/*
	Pick helpers
*/
/proc/pick_area_turf_by_flag(var/area_flags, var/list/predicates)
	var/list/turfs
	for(var/sub_area_type in subtypesof(/area))
		var/area/sub_area = sub_area_type
		if(!(initial(sub_area.area_flags) & area_flags))
			continue
		sub_area = locate(sub_area_type)
		if(!sub_area)
			continue
		for(var/turf/T in sub_area.contents)
			if(!predicates || all_predicates_true(list(T), predicates))
				LAZYADD(turfs, T)
	if(LAZYLEN(turfs))
		return pick(turfs)

/proc/pick_area_turf(var/areatype, var/list/predicates)
	var/list/turfs = get_area_turfs(areatype, predicates)
	if(turfs && turfs.len)
		return pick(turfs)

/proc/pick_area(var/list/predicates)
	var/list/areas = get_filtered_areas(predicates)
	if(LAZYLEN(areas))
		. = pick(areas)

/proc/pick_area_and_turf(var/list/area_predicates, var/list/turf_predicates)
	var/list/areas = get_filtered_areas(area_predicates)
	// We loop over all area candidates, until we finally get a valid turf or run out of areas
	while(!. && length(areas))
		var/area/A = pick_n_take(areas)
		. = pick_area_turf(A, turf_predicates)

/proc/pick_area_turf_in_connected_z_levels(var/list/area_predicates, var/list/turf_predicates, var/z_level)
	area_predicates = area_predicates.Copy()

	var/z_levels = SSmapping.get_connected_levels(z_level)
	area_predicates[/proc/area_belongs_to_zlevels] = z_levels
	return pick_area_and_turf(area_predicates, turf_predicates)

/*
	Predicate Helpers
*/
/proc/area_belongs_to_zlevels(var/area/A, var/list/z_levels)
	. = (A.z in z_levels)

/proc/is_station_area(var/area/A)
	if(istype(A))
		. = isStationLevel(A.z)

/proc/is_contact_area(var/area/A)
	if(istype(A))
		. = isContactLevel(A.z)

/proc/is_player_area(var/area/A)
	if(istype(A))
		. = isPlayerLevel(A.z)

/proc/is_not_space_area(var/area/A)
	. = !istype(A,/area/space)

/proc/is_not_shuttle_area(var/area/A)
	. = !istype(A) || !(A.area_flags & AREA_FLAG_SHUTTLE)

/proc/is_area_with_turf(var/area/A)
	if(istype(A))
		. = isnum(A.x)

/proc/is_area_without_turf(var/area/A)
	. = !is_area_with_turf(A)

/proc/is_maint_area(var/area/A)
	. = !istype(A) || !(A.area_flags & AREA_FLAG_MAINTENANCE)

/proc/is_not_maint_area(var/area/A)
	. = !is_maint_area(A)

/proc/is_coherent_area(var/area/A)
	return !is_type_in_list(A, global.using_map.area_coherency_test_exempt_areas)

var/global/list/is_station_but_not_space_or_shuttle_area = list(/proc/is_station_area, /proc/is_not_space_area, /proc/is_not_shuttle_area)

var/global/list/is_contact_but_not_space_or_shuttle_area = list(/proc/is_contact_area, /proc/is_not_space_area, /proc/is_not_shuttle_area)

var/global/list/is_player_but_not_space_or_shuttle_area = list(/proc/is_player_area, /proc/is_not_space_area, /proc/is_not_shuttle_area)

var/global/list/is_station_area = list(/proc/is_station_area)

var/global/list/is_station_and_maint_area = list(/proc/is_station_area, /proc/is_maint_area)

var/global/list/is_station_but_not_maint_area = list(/proc/is_station_area, /proc/is_not_maint_area)

/*
	Misc Helpers
*/
#define teleportlocs area_repository.get_areas_by_name_and_coords(global.is_player_but_not_space_or_shuttle_area)
#define stationlocs area_repository.get_areas_by_name(global.is_player_but_not_space_or_shuttle_area)
#define wizteleportlocs area_repository.get_areas_by_name(global.is_station_area)
#define maintlocs area_repository.get_areas_by_name(global.is_station_and_maint_area)
#define wizportallocs area_repository.get_areas_by_name(global.is_station_but_not_space_or_shuttle_area)
