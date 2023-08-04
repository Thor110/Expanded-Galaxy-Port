void main() {
	object oPC = GetFirstPC();
	object oK39_way_backward = GetObjectByTag("k39_way_backward", 0);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionMoveToObject(oK39_way_backward, 0, 1.0));
}

