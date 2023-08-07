// Globals
	float floatGLOB_1 = 114.0;

void main() {
	if (GetGlobalBoolean("421DXN_END_SYNC")) {
		return;
	}
	int int2 = GetGlobalBoolean("421DXN_Timer_Started");
	if (((GetTimeHour() < 24) && (!int2))) {
		SetGlobalNumber("MIN_TIME_MIL", (GetTimeMillisecond() / 10));
		SetGlobalNumber("MIN_TIME_SEC", GetTimeSecond());
		SetGlobalNumber("MIN_TIME_MIN", GetTimeMinute());
		SetGlobalNumber("MIN_TIME_HOUR", GetTimeHour());
		SetGlobalBoolean("421DXN_Timer_Started", 1);
		int2 = 1;
	}
	if (int2) {
		int nGlobal = GetGlobalNumber("MIN_TIME_MIL");
		int int11 = GetGlobalNumber("MIN_TIME_SEC");
		int int13 = GetGlobalNumber("MIN_TIME_MIN");
		int int15 = GetGlobalNumber("MIN_TIME_HOUR");
		int int17 = (GetTimeMillisecond() / 10);
		int int19 = GetTimeSecond();
		int int21 = GetTimeMinute();
		int int23 = GetTimeHour();
		float float1 = 0.0;
		float1 = (float1 + ((((nGlobal / 100.0) + int11) + (int13 * 60)) + ((int15 * 2) * 60)));
		float float2 = 0.0;
		if ((int23 < int15)) {
			int23 = (int23 + 24);
		}
		float2 = (float2 + ((((int17 / 100.0) + int19) + (int21 * 60)) + ((int23 * 2) * 60)));
		float float3 = (float2 - float1);
		if ((float3 > floatGLOB_1)) {
			SetGlobalBoolean("421DXN_Turret_Done", 1);
		}
	}
	int int25 = GetGlobalBoolean("421DXN_Turret_Done");
	if (int25) {
		SetGlobalBoolean("421DXN_Turret_Done", 0);
		int int27 = GetGlobalNumber("421DXN_Dead_Enemies");
		GiveXPToCreature(GetFirstPC(), (100 * int27));
		SetGlobalNumber("401DXN_STARTED", 4);
		StartNewModule("ebo_m12aa", "", "", "", "", "", "", "");
	}
}

