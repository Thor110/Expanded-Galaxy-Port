void main() {
	object oPC = GetFirstPC();
	object oK_sta_darkjedi1 = GetObjectByTag("k_sta_darkjedi1", 0);
	object oK_sta_darkjedi2 = GetObjectByTag("k_sta_darkjedi2", 0);
	object oK_sta_darkjedi3 = GetObjectByTag("k_sta_darkjedi3", 0);
	ChangeToStandardFaction(oK_sta_darkjedi1, 1);
	ChangeToStandardFaction(oK_sta_darkjedi2, 1);
	ChangeToStandardFaction(oK_sta_darkjedi3, 1);
	SetNPCAIStyle(oK_sta_darkjedi1, 0);
	SetNPCAIStyle(oK_sta_darkjedi2, 0);
	SetNPCAIStyle(oK_sta_darkjedi3, 0);
	SetGlobalBoolean("STA_SITH_RUN", 1);
	DelayCommand(0.1, AssignCommand(oK_sta_darkjedi1, ClearAllActions()));
	DelayCommand(0.11, AssignCommand(oK_sta_darkjedi2, ClearAllActions()));
	DelayCommand(0.120000005, AssignCommand(oK_sta_darkjedi3, ClearAllActions()));
}
