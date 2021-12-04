int StartingConditional() {
	int nLocal = GetLocalNumber(GetObjectByTag("racedialog", 0), 12);
	if ((!nLocal)) {
		return 0;
	}
	int int3 = 0;
	int int4 = 0;
	vector struct2 = SWMG_GetPlayerOffset();
	if ((struct2.z > 2.0)) {
		return 0;
	}
	object object2;
	int3 = SWMG_GetSwoopUpgrade(0);
	int4 = SWMG_GetSwoopUpgrade(1);
	float float4 = (1.0 + (IntToFloat(int3) * 0.2));
	float float6 = (1.0 + (0.5 * IntToFloat(int4)));
	int nGlobal = GetGlobalNumber("MIN_RACE_GEAR");
	float float8 = SWMG_GetPlayerSpeed();
	int int9 = nGlobal;
	SWMG_SetJumpSpeed(30.0);
	return 0;
}

