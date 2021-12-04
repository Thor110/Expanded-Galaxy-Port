void main() {
	object oPC = GetFirstPC();
	object oSta45b_malak = GetObjectByTag("sta45b_malak", 0);
	object oNearestSithMaster = GetNearestObjectByTag("SithMaster", OBJECT_SELF, 1);
	SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	location location1 = GetLocation(GetNearestObjectByTag("sta_spawner_1", oPC, 1));
	location location3 = GetLocation(GetNearestObjectByTag("sta_spawner_2", oPC, 1));
	location location5 = GetLocation(GetNearestObjectByTag("sta_spawner_3", oPC, 1));
	location location7 = GetLocation(GetNearestObjectByTag("sta_spawner_4", oPC, 1));
	CreateObject(1, "sta45b_appren001", location1, 0);
	CreateObject(1, "sta45b_appren002", location3, 0);
	CreateObject(1, "k_sta_sithtrpenc", location5, 0);
	CreateObject(1, "sta45b_troope001", location7, 0);
	DelayCommand(0.5, DestroyObject(oSta45b_malak, 0.0, 0, 0.0));
	DelayCommand(0.5, DestroyObject(oNearestSithMaster, 0.0, 0, 0.0));
}

