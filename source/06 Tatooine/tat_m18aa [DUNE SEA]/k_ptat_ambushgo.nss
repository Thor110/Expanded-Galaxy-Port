void main() {
	object oTat18_gurkespawn = GetWaypointByTag("tat18_gurkespawn");
	object oTat18_ugzakspawn = GetWaypointByTag("tat18_ugzakspawn");
	object oTat18_narkaspawn = GetWaypointByTag("tat18_narkaspawn");
	location location1 = GetLocation(oTat18_gurkespawn);
	location location3 = GetLocation(oTat18_ugzakspawn);
	location location5 = GetLocation(oTat18_narkaspawn);
	object oTat18_12gurke_01 = CreateObject(1, "tat18_12gurke_01", location1, 0);
	CreateObject(1, "tat18_12ugzak_01", location3, 0);
	CreateObject(1, "tat18_12narka_01", location5, 0);
}

