void main() {
	object oKor33_mekel = GetObjectByTag("kor33_mekel", 0);
	object oK33b_way_mekel = GetObjectByTag("k33b_way_mekel", 0);
	ActionDoCommand(SetLocked(OBJECT_SELF, 0));
	ActionDoCommand(AssignCommand(oKor33_mekel, ActionMoveToObject(OBJECT_SELF, 0, 1.0)));
	ActionOpenDoor(OBJECT_SELF);
}

