void main() {
	object oPC = GetFirstPC();
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	string string1;
	int nAlign = GetGoodEvilValue(GetFirstPC());
	if ((nAlign > 60)) {
		string1 = "g_a_mstrrobe01";
	}
	else {
		if ((nAlign < 40)) {
			string1 = "g_a_mstrrobe02";
		}
		else {
			string1 = "g_a_mstrrobe03";
		}
	}
	object object6 = CreateItemOnObject(string1, oPC, 1);
	AssignCommand(oPC, ActionEquipItem(object6, 1, 0));
}

