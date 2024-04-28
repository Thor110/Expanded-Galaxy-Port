void main() {
	SWMG_PlayAnimation(SWMG_GetPlayer(), "hit", 0, 0, 0);
	if ((GetGlobalBoolean("M12AB_END_SYNC") == 0)) {
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
			SetGlobalBoolean("M12AB_END_SYNC", 1);
			int int5;
			int int6 = SWMG_GetEnemyCount();
			int5 = 1;
			while ((int5 <= int6)) {
				SWMG_SetFollowerHitPoints(SWMG_GetEnemy(int5), 2000);
				(int5++);
			}
			SoundObjectStop(GetObjectByTag("Alarm01", 0));
			SWMG_PlayAnimation(OBJECT_SELF, "Health00", 1, 0, 0);
			DelayCommand(0.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(GetObjectByTag("Invisible", 0)), 0.0));
			DelayCommand(2.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(OBJECT_SELF), 0.0));
			SetGlobalFadeOut(3.0, 1.0, 0.0, 0.0, 0.0);
			DisableVideoEffect();
			if ((GetGlobalBoolean("K_HK47_SIMULATION") != 1)) {
				BarkString(OBJECT_INVALID, 38465);
				DelayCommand(4.0, EndGame(1));
			}
			else {
				ExecuteScript("k_ren_turret", OBJECT_SELF, 0xFFFFFFFF);
			}
		}
	}
}

