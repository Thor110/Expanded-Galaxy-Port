void main() {
	object oGuard1 = GetObjectByTag("guard1", 0);
	object oGuard2 = GetObjectByTag("guard2", 0);
	object oGuard3 = GetObjectByTag("guard3", 0);
	object oArea = GetArea(OBJECT_SELF);
	float float1 = 5.0;
	effect efVisual = EffectVisualEffect(3006, 0);
	ApplyEffectToObject(1, efVisual, OBJECT_SELF, float1);
	if (((((!GetIsObjectValid(oGuard1)) || GetIsDead(oGuard1)) && ((!GetIsObjectValid(oGuard2)) || GetIsDead(oGuard2))) && ((!GetIsObjectValid(oGuard3)) || GetIsDead(oGuard3)))) {
		int int7 = 0;
		int int8 = 0;
		MusicBattleStop(oArea);
		MusicBattleChange(oArea, int8);
		MusicBackgroundStop(oArea);
		object oPC = GetFirstPC();
		object oVision_malak = GetObjectByTag("vision_malak", 0);
		object oVision_channa = GetObjectByTag("vision_channa", 0);
		object oMr_invis = GetObjectByTag("mr_invis", 0);
		object oOld_droid = GetObjectByTag("old_droid", 0);
		DelayCommand(0.1, SetLightsaberPowered(oPC, 0, 0, 0));
		DelayCommand(0.1, SetLightsaberPowered(oVision_malak, 0, 0, 0));
		DelayCommand(0.1, SetLightsaberPowered(oVision_channa, 0, 0, 0));
	}
	SpeakString("GEN_I_AM_DEAD", 3);
	SpeakString("GEN_ATTACK_MY_TARGET", 3);
	SignalEvent(OBJECT_SELF, EventUserDefined(1007));
}

