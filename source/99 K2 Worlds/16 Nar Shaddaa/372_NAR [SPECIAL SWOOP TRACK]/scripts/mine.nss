// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 1;
	int intGLOB_17 = 2;
	int intGLOB_18 = 3;
	int intGLOB_19 = 4;
	int intGLOB_20 = 5;
	int intGLOB_21 = 6;
	int intGLOB_22 = 7;
	int intGLOB_23 = 8;
	int intGLOB_24 = 9;
	int intGLOB_25 = 10;
	int intGLOB_26 = 11;
	int intGLOB_27 = 12;
	int intGLOB_28 = 13;
	int intGLOB_29 = 14;
	int intGLOB_30 = 15;
	int intGLOB_31 = 16;
	int intGLOB_32 = 17;
	int intGLOB_33 = 18;
	int intGLOB_34 = 19;
	int intGLOB_35 = 20;
	int intGLOB_36 = 21;
	int intGLOB_37 = 22;
	int intGLOB_38 = 23;
	int intGLOB_39 = 24;
	int intGLOB_40 = 25;
	int intGLOB_41 = 26;
	int intGLOB_42 = 27;
	int intGLOB_43 = 28;
	int intGLOB_44 = 29;
	int intGLOB_45 = 30;
	int intGLOB_46 = 31;
	int intGLOB_47 = 32;
	int intGLOB_48 = 84;

int StartingConditional() {
	object object1 = SWMG_GetPlayer();
	int nGlobal = GetGlobalNumber("MIN_RACE_GEAR");
	if (((nGlobal > 0) && (!SWMG_GetIsInvulnerable(object1)))) {
		int int4 = 100;
		object oDamage = GetObjectByTag("Damage", 0);
		SoundObjectPlay(oDamage);
		object object5 = SWMG_GetPlayer();
		location location1;
		vector struct2 = SWMG_GetPosition(object5);
		location1 = Location(struct2, 0.0);
		ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), location1, 0.0);
		SWMG_DestroyMiniGameObject(OBJECT_SELF);
		SWMG_PlayAnimation(object5, "", 0, 0, 0);
		int int5 = GetGlobalNumber("MIN_RACE_GEAR");
		int int7 = (int5 - 2);
		if ((int7 < 1)) {
			int7 = 1;
		}
		oDamage = GetObjectByTag(("Engine0" + IntToString(int5)), 0);
		SoundObjectFadeAndStop(oDamage, 0.5);
		SetGlobalNumber("MIN_RACE_GEAR", int7);
		int int8 = 0;
		int int9 = 0;
		float float4 = 35.0;
		float float5 = 60.0;
		float float6 = 100.0;
		float float7 = 150.0;
		float float8 = 210.0;
		float float9 = 20.0;
		float float10 = 8.0;
		float float11 = 6.0;
		float float12 = 3.0;
		float float13 = 2.0;
		int8 = SWMG_GetSwoopUpgrade(0);
		int9 = SWMG_GetSwoopUpgrade(1);
		float float14 = (1.0 + (IntToFloat(int8) * 0.2));
		float float16 = (1.0 + (0.5 * IntToFloat(int9)));
		float float18 = 0.0;
		float float19;
		float float20;
		float float21;
		AurPostString(("Mine - New Gear: " + IntToString(int7)), 0, 17, 5.0);
		switch (int7) {
			case 1:
				float18 = 35.0;
				float19 = (float4 * float14);
				float20 = (float5 + 10.0);
				float21 = (float9 * float16);
				break;
			case 2:
				float18 = 60.0;
				float19 = (float5 * float14);
				float20 = (float6 + 10.0);
				float21 = (float10 * float16);
				break;
			case 3:
				float18 = 100.0;
				float19 = (float6 * float14);
				float20 = (float7 + 5.0);
				float21 = (float11 * float16);
				break;
			case 4:
				float18 = 150.0;
				float19 = (float7 * float14);
				float20 = (float8 + 5.0);
				float21 = (float12 * float16);
				break;
				SWMG_SetPlayerSpeed(float18);
				SWMG_SetPlayerMinSpeed(float19);
				SWMG_SetPlayerMaxSpeed(float20);
				SWMG_SetPlayerAccelerationPerSecond(float21);
				oDamage = GetObjectByTag(("Engine0" + IntToString(int7)), 0);
				SoundObjectPlay(oDamage);
				SWMG_PlayAnimation(object5, ("cDistL" + IntToString(int7)), 0, 0, 0);
				SWMG_PlayAnimation(object5, "damage", 0, 0, 1);
				SWMG_PlayAnimation(object5, (("gear" + IntToString(int7)) + "l"), 1, 0, 1);
				int int12 = SWMG_GetHitPoints(object5);
				int int14 = (int12 - int4);
				if ((int14 < 0)) {
					int14 = 0;
				}
				SetLocalNumber(GetObjectByTag("racedialog", 0), intGLOB_12, FloatToInt(((100.0 * int14) / SWMG_GetMaxHitPoints(object5))));
				SWMG_SetFollowerHitPoints(object5, int14);
				SWMG_SetPlayerInvincibility(1.0);
				SWMG_StartInvulnerability(object5);
				break;
				return 0;
			default:
		}
	}
}

