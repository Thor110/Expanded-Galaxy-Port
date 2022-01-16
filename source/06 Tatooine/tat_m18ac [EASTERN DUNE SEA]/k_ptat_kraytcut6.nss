void main() {
	object oTat18_kraytdrag = GetObjectByTag("tat18_kraytdrag", 0);
	object oTat18_wp_krayt = GetWaypointByTag("tat18_wp_krayt");
	AssignCommand(oTat18_kraytdrag, ClearAllActions());
	AssignCommand(oTat18_kraytdrag, ActionMoveToObject(oTat18_wp_krayt, 0, 1.0));
}

