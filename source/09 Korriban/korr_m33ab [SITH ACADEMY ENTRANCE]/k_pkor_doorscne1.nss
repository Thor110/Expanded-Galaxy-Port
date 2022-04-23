void main() {
	object oKor33_mekel = GetObjectByTag("kor33_mekel", 0);
	object oK33b_way_mekel = GetObjectByTag("k33b_way_mekel", 0);
	ActionDoCommand(AssignCommand(oKor33_mekel, ActionMoveToObject(oK33b_way_mekel, 0, 1.0)));
	ActionCloseDoor(OBJECT_SELF);
	ActionDoCommand(SetLocked(OBJECT_SELF, 1));
	ActionDoCommand(DestroyObject(oKor33_mekel, 0.0, 0, 0.0));
}

