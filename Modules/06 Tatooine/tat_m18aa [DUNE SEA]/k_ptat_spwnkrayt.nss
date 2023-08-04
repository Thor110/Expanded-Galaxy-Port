void main() {
	object oTat18_hunter_01 = GetObjectByTag("tat18_hunter_01", 0);
	object oTat18_wp_kraytft = GetWaypointByTag("tat18_wp_kraytft");
	location location1 = GetLocation(oTat18_wp_kraytft);
	if ((GetIsObjectValid(oTat18_hunter_01) == 1)) {
		DestroyObject(oTat18_hunter_01, 0.0, 0, 0.0);
	}
	CreateObject(1, "tat18_kraytdrag", location1, 0);
}

