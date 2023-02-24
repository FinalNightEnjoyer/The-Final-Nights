#if !defined(USING_MAP_DATUM)
	// Mods section
	#include "../../mods/persistence/_persistence.dme"
	#include "../../mods/content/xenobiology/_xenobiology.dme"
	#include "../chargen/chargen_areas.dm"
	#include "../chargen/chargen_objects.dm"
	#include "../utility/cargo_shuttle_tmpl.dm"

	#include "../../mods/content/modern_earth/_modern_earth.dme"

	#include "earth_zlevels.dm"
	#include "earth_areas.dm"
	#include "earth_departments.dm"
	#include "earth_jobs.dm"
	#include "earth_exoplanet.dm"
	#include "earth_network.dm"
	#include "earth_overmap.dm"
	#include "earth_unit_testing.dm"
	#include "earth_turf.dm"
	#include "earth_events.dm"
	#include "earth_supply.dm"

	#define USING_MAP_DATUM /datum/map/earth
#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring earth

#endif
