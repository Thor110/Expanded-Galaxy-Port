void main() {
	object oTat18_wp_kraytf2 = GetWaypointByTag("tat18_wp_kraytf2");
	location location1 = GetLocation(oTat18_wp_kraytf2);
	CreateObject(1, "tat18_kraytdrag", location1, 0);
}

