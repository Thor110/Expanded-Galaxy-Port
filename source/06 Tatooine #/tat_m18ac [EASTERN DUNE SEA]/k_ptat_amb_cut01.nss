void main() {
	object oPC = GetFirstPC();
	object oTat18_tuskamb_01 = GetObjectByTag("tat18_tuskamb_01", 0);
	object oTat18_tuskamb_02 = GetObjectByTag("tat18_tuskamb_02", 0);
	object oTat18_tuskamb_03 = GetObjectByTag("tat18_tuskamb_03", 0);
	object oTat18_tuskamb_04 = GetObjectByTag("tat18_tuskamb_04", 0);
	AssignCommand(oTat18_tuskamb_01, ActionMoveToObject(oPC, 1, 1.0));
	AssignCommand(oTat18_tuskamb_02, ActionMoveToObject(oPC, 1, 1.0));
	AssignCommand(oTat18_tuskamb_03, ActionMoveToObject(oPC, 1, 1.0));
	AssignCommand(oTat18_tuskamb_04, ActionMoveToObject(oPC, 1, 1.0));
}

