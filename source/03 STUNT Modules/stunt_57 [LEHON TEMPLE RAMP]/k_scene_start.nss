// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	object object1 = GetObjectByTag(stringParam1, 0);
	DelayCommand(0.2, CancelCombat(object1));
	DelayCommand(0.3, AssignCommand(object1, ClearAllActions()));
	object oLArmItem = GetItemInSlot(7, object1);
	object object5 = GetItemInSlot(7, object1);
	if (GetIsObjectValid(oLArmItem)) {
		DestroyObject(oLArmItem, 0.0, 0, 0.0);
	}
	if (GetIsObjectValid(object5)) {
		DestroyObject(object5, 0.0, 0, 0.0);
	}
	DelayCommand(0.5, AssignCommand(object1, ClearAllEffects()));
}

void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		string string1 = "Bastila";
		if ((GetGlobalBoolean("STA_BASTILA_DEAD") == 0)) {
			AurPostString("Spawning Bastila", 12, 13, 1.0);
			CreateObject(1, "bastila00c", GetLocation(GetObjectByTag("WP01", 0)), 0);
			string1 = "";
		}
		string string2 = "HK47";
		if ((IsAvailableCreature(3) == 1)) {
			AurPostString("Spawning HK47", 12, 14, 1.0);
			SpawnAvailableNPC(3, GetLocation(GetObjectByTag("WP02", 0)));
			string2 = "";
		}
		string string3 = "Juhani";
		if ((IsAvailableCreature(5) == 1)) {
			AurPostString("Spawning Juhani", 12, 15, 1.0);
			SpawnAvailableNPC(5, GetLocation(GetObjectByTag("WP03", 0)));
			string3 = "";
		}
		string string4 = "Zaalbar";
		if (((GetGlobalBoolean("KAS_FREYYRDEAD") == 1) || (GetGlobalBoolean("KAS_CHUUNDARDEAD") == 1))) {
			AurPostString("Spawning Zaalbar", 12, 16, 1.0);
			SpawnAvailableNPC(8, GetLocation(GetObjectByTag("WP04", 0)));
			string4 = "";
		}
		if ((IsAvailableCreature(2) == 0)) {
			AddAvailableNPCByTemplate(2, "p_carth");
		}
		AurPostString("Spawning Carth", 12, 17, 1.0);
		SpawnAvailableNPC(2, GetLocation(GetObjectByTag("WP05", 0)));
		if ((IsAvailableCreature(1) == 0)) {
			AddAvailableNPCByTemplate(1, "p_cand");
		}
		AurPostString("Spawning Canderous", 12, 18, 1.0);
		SpawnAvailableNPC(1, GetLocation(GetObjectByTag("WP06", 0)));
		if ((IsAvailableCreature(4) == 0)) {
			AddAvailableNPCByTemplate(4, "p_jolee");
		}
		AurPostString("Spawning Jolee", 12, 19, 1.0);
		SpawnAvailableNPC(4, GetLocation(GetObjectByTag("WP07", 0)));
		if ((IsAvailableCreature(7) == 0)) {
			AddAvailableNPCByTemplate(7, "p_t3m4");
		}
		AurPostString("Spawning T3M4", 12, 20, 1.0);
		SpawnAvailableNPC(7, GetLocation(GetObjectByTag("WP08", 0)));
		if ((IsAvailableCreature(6) == 0)) {
			AddAvailableNPCByTemplate(6, "p_mission");
		}
		AurPostString("Spawning Mission", 12, 21, 1.0);
		SpawnAvailableNPC(6, GetLocation(GetObjectByTag("WP09", 0)));
		AssignCommand(GetFirstPC(), ClearAllEffects());
		sub1("Bastila");
		sub1("Carth");
		sub1("Jolee");
		sub1("Cand");
		sub1("HK47");
		sub1("T3M4");
		sub1("Mission");
		sub1("Zaalbar");
		sub1("Juhani");
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m41ad_c01", 0, 0, 1, string1, string2, string3, string4, "", "", 0));
		SetGlobalBoolean("CREDITPLAY", 0);
	}
}

