void main() {
	ActionWait(3.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_carth1", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_carth2", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_carth3", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_carth4", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_carth5", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_carth6", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_carth7", 0), 1, 1.0, 60.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("dan13_wp_carth6", 0))));
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

