void main() {
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila1", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila2", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila3", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila4", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila5", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila6", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila7", 0), 1, 1.0, 60.0);
	ActionForceMoveToObject(GetObjectByTag("dan13_wp_bastila8", 0), 1, 1.0, 60.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("dan13_WP_council", 0))));
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

