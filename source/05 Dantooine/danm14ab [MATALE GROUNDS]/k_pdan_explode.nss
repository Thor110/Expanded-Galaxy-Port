// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub3(int intParam1, string stringParam2, location locationParam3);
void sub2(float floatParam1);
void sub1(object objectParam1, int intParam2, int intParam3);

void sub3(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub2(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void sub1(object objectParam1, int intParam2, int intParam3) {
	int nLevel = GetHitDice(GetFirstPC());
	if ((intParam3 == 1)) {
		if (((((intParam2 == intGLOB_12) || (intParam2 == intGLOB_17)) || (intParam2 == intGLOB_18)) || (intParam2 == intGLOB_19))) {
			GiveXPToCreature(GetFirstPC(), (nLevel * 15));
		}
		else {
			if ((((intParam2 == intGLOB_13) || (intParam2 == intGLOB_20)) || (intParam2 == intGLOB_16))) {
				GiveXPToCreature(GetFirstPC(), (nLevel * 20));
			}
			else {
				if (((intParam2 == intGLOB_14) || (intParam2 == intGLOB_15))) {
					GiveXPToCreature(GetFirstPC(), (nLevel * 10));
				}
			}
		}
	}
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void main() {
	sub1(OBJECT_SELF, intGLOB_10, 1);
	object oZuulanspeeder = GetObjectByTag("zuulanspeeder", 0);
	location location1 = GetLocation(GetObjectByTag("wp_ZuulanSpeeder", 0));
	location location3 = GetLocation(GetObjectByTag("wp_ZuulanSpeeder_flame", 0));
	location location5 = GetLocation(GetObjectByTag("dan_zuulan_move", 0));
	object oDan_cut_zuulan = GetObjectByTag("dan_cut_zuulan", 0);
	object oDan_cut_droid1 = GetObjectByTag("dan_cut_droid1", 0);
	object oDan_cut_droid2 = GetObjectByTag("dan_cut_droid2", 0);
	object oDan_fire_sound = GetObjectByTag("dan_fire_sound", 0);
	sub2(7.0);
	SetPlotFlag(oZuulanspeeder, 0);
	SetMinOneHP(oDan_cut_zuulan, 0);
	AssignCommand(oDan_cut_zuulan, SetFacingPoint(GetPosition(oDan_cut_droid2)));
	DelayCommand(0.5, AssignCommand(oDan_cut_zuulan, PlayAnimation(5, 1.0, 4.0)));
	DelayCommand(2.45, PlaySound("cs_grenbeep"));
	DelayCommand(2.8, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), location3, 0.0));
	DelayCommand(3.0, SetDialogPlaceableCamera(10));
	DelayCommand(3.0, ApplyEffectToObject(0, EffectDamage(1000, 8, 0), oZuulanspeeder, 0.0));
	DelayCommand(3.0, DestroyObject(GetObjectByTag("dan_alarm_obj", 0), 0.0, 0, 0.0));
	DelayCommand(3.0, sub3(64, "zuulanspeeder2", location1));
	DelayCommand(3.0, sub3(64, "dan_speeder_flam", location3));
	DelayCommand(3.0, ApplyEffectToObject(0, EffectDeath(0, 1), oDan_cut_zuulan, 0.0));
	DelayCommand(3.2, ApplyEffectToObject(0, EffectDeath(0, 1), oDan_cut_droid1, 0.0));
	DelayCommand(3.3, ApplyEffectToObject(0, EffectDeath(0, 1), oDan_cut_droid2, 0.0));
	DelayCommand(3.0, SoundObjectPlay(oDan_fire_sound));
}

