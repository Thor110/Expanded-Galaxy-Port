void main() {
	SWMG_OnDeath();
	SWMG_PlayAnimation(SWMG_GetPlayer(), "SithLoop03d", 1, 0, 1);
	int nGlobal = GetGlobalNumber("421DXN_Total_Enemies");
	int int3 = (GetGlobalNumber("421DXN_Dead_Enemies") + 1);
	SetGlobalNumber("421DXN_Dead_Enemies", int3);
	string string1 = IntToString(int3);
	string string3 = IntToString(nGlobal);
	SetCustomToken(10, string1);
	SetCustomToken(11, string3);
	BarkString(OBJECT_INVALID, 127828);
	if ((int3 >= nGlobal)) {
		SetGlobalBoolean("421DXN_Turret_Done", 1);
	}
}

