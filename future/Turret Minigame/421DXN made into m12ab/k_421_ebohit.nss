void main() {
	SWMG_PlayAnimation(SWMG_GetPlayer(), "hit", 0, 0, 0);
	if ((GetGlobalBoolean("421DXN_END_SYNC") == 0)) {
		if ((SWMG_GetHitPoints(OBJECT_SELF) >= 2000)) {
			SWMG_OnDamage();
			int int3 = ((((SWMG_GetHitPoints(OBJECT_SELF) - 2000) * 12) / 1000) + 1);
			if ((int3 <= 9)) {
				string string1 = ("Health0" + IntToString(int3));
				SWMG_PlayAnimation(OBJECT_SELF, string1, 1, 0, 0);
			}
			else {
				string string3 = ("Health" + IntToString(int3));
				SWMG_PlayAnimation(OBJECT_SELF, string3, 1, 0, 0);
			}
			if ((int3 == 3)) {
				SoundObjectPlay(GetObjectByTag("Alarm01", 0));
			}
		}
		else {
			SetGlobalBoolean("421DXN_END_SYNC", 1);
			SoundObjectStop(GetObjectByTag("Alarm01", 0));
			SWMG_PlayAnimation(OBJECT_SELF, "Health00", 1, 0, 0);
			DelayCommand(0.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(GetObjectByTag("Invisible", 0)), 0.0));
			DelayCommand(2.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(OBJECT_SELF), 0.0));
			SetGlobalFadeOut(3.0, 1.0, 0.0, 0.0, 0.0);
			BarkString(OBJECT_INVALID, 127829);
			int nGlobal = GetGlobalNumber("421DXN_Dead_Enemies");
			GiveXPToCreature(GetFirstPC(), (100 * nGlobal));
			SetGlobalNumber("401DXN_STARTED", 4);
			DelayCommand(4.0, StartNewModule("ebo_m12aa", "", "", "", "", "", "", ""));
		}
	}
}

