void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oPC = GetFirstPC();
	object oEntering = GetEnteringObject();
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	if (((IsObjectPartyMember(oEntering) && (GetGlobalBoolean("tat_TuskenDead") == 0)) && (GetIsEnemy(oPC, oTat18_tuskanfac) == 1))) {
		//ApplyEffectToObject(0, EffectDeath(0, 1), object3, 0.0);
		//ApplyEffectToObject(0, EffectDeath(0, 1), object5, 0.0);
		//ApplyEffectToObject(0, EffectDeath(0, 1), oNPC, 0.0);
	}
}

