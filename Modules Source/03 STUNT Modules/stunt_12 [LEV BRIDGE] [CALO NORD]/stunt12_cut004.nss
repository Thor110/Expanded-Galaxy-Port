void main() {
	object oStunt12_saul = GetObjectByTag("stunt12_saul", 0);
	object oStunt12_malak = GetObjectByTag("stunt12_malak", 0);
	object oStunt12_wp_04 = GetWaypointByTag("stunt12_wp_04");
	AssignCommand(oStunt12_saul, SetFacingPoint(GetPosition(oStunt12_wp_04)));
}

