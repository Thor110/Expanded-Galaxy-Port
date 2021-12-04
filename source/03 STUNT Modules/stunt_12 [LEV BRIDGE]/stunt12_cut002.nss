void main() {
	object oStunt12_wp_03 = GetWaypointByTag("stunt12_wp_03");
	location location1 = GetLocation(oStunt12_wp_03);
	CreateObject(1, "stunt12_malak", location1, 0);
}

