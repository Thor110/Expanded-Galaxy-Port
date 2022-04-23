void main() {
	object oTat18_bantha1 = GetObjectByTag("tat18_bantha1", 0);
	object oTat18_bantha2 = GetObjectByTag("tat18_bantha2", 0);
	object oTat18_bantha3 = GetObjectByTag("tat18_bantha3", 0);
	location location1 = GetLocation(GetObjectByTag("tat18_wp_bantha4", 0));
	location location3 = GetLocation(GetObjectByTag("tat18_wp_bantha5", 0));
	location location5 = GetLocation(GetObjectByTag("tat18_wp_bantha6", 0));
	AssignCommand(oTat18_bantha1, JumpToLocation(location1));
	AssignCommand(oTat18_bantha2, JumpToLocation(location3));
	AssignCommand(oTat18_bantha3, JumpToLocation(location5));
}

