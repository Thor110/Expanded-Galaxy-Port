void main() {
	ActionMoveToObject(GetObjectByTag("wp_bench01", 0), 0, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("wp_bench02", 0))));
	ActionPlayAnimation(11, 1.0, 5.0);
	ActionDoCommand(AssignCommand(GetObjectByTag("dan13_zhar", 0), ActionResumeConversation()));
}

