void main() {
	object oTrooper3 = GetObjectByTag("trooper3", 0);
	object oTrooper4 = GetObjectByTag("trooper4", 0);
	object oAdin_1 = GetObjectByTag("adin_1", 0);
	object oAdin_2 = GetObjectByTag("adin_2", 0);
	object oInjured_guy = GetObjectByTag("injured_guy", 0);
	AssignCommand(oAdin_1, ActionDoCommand(DestroyObject(oTrooper3, 0.0, 0, 0.0)));
	AssignCommand(oAdin_1, ActionDoCommand(DestroyObject(oTrooper4, 0.0, 0, 0.0)));
	AssignCommand(oAdin_1, ActionDoCommand(DestroyObject(oInjured_guy, 0.0, 0, 0.0)));
}

