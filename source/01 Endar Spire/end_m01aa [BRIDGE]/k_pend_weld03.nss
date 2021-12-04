void main() {
	ActionMoveToObject(GetObjectByTag("wp_end_weld01_01", 0), 0, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetNearestObjectByTag("wp_end_weld", OBJECT_SELF, 1))));
	ActionPlayAnimation(25, 1.0, 0.0);
	ActionMoveToObject(GetObjectByTag("wp_end_weld01_02", 0), 0, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetNearestObjectByTag("wp_end_weld", OBJECT_SELF, 1))));
	ActionPlayAnimation(25, 1.0, 0.0);
	ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(0)));
}

