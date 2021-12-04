void main() {
	object oTat18_wp_krayt = GetWaypointByTag("tat18_wp_krayt");
	DelayCommand(1.0, ActionMoveToObject(oTat18_wp_krayt, 1, 1.0));
}

