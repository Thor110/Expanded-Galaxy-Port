void main() {
	object oKas22_rebczer_01 = GetObjectByTag("kas22_rebczer_01", 0);
	object oKas22_rebczer_02 = GetObjectByTag("kas22_rebczer_02", 0);
	object oKas22_rebczer_03 = GetObjectByTag("kas22_rebczer_03", 0);
	object oKas22_wookfht_01 = GetObjectByTag("kas22_wookfht_01", 0);
	object oKas22_wookfht_02 = GetObjectByTag("kas22_wookfht_02", 0);
	object oKas22_wookfht_03 = GetObjectByTag("kas22_wookfht_03", 0);
	object oKas22_wp_reb_07 = GetWaypointByTag("kas22_wp_reb_07");
	object oKas22_wp_reb_08 = GetWaypointByTag("kas22_wp_reb_08");
	location location1 = GetLocation(oKas22_wp_reb_07);
	location location3 = GetLocation(oKas22_wp_reb_08);
	object oKas22_wookfht_04 = CreateObject(1, "kas22_wookfht_04", location1, 0);
	object oKas22_rebczer_04 = CreateObject(1, "kas22_rebczer_04", location3, 0);
}

