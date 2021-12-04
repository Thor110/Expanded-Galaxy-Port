void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	AdjustReputation(oNPC, oTat18_tuskanfac, (-100));
	SetGlobalBoolean("tat_TuskenSuit", 0);
	SetGlobalBoolean("tat_TuskenMad", 1);
	effect efNext = GetFirstEffect(oNPC);
	while ((GetIsEffectValid(efNext) == 1)) {
		if ((GetEffectType(efNext) == 62)) {
			RemoveEffect(oNPC, efNext);
		}
		efNext = GetNextEffect(oNPC);
	}
	if ((GetIsObjectValid(object3) == 1)) {
		efNext = GetFirstEffect(object3);
		while ((GetIsEffectValid(efNext) == 1)) {
			if ((GetEffectType(efNext) == 62)) {
				RemoveEffect(object3, efNext);
			}
			efNext = GetNextEffect(object3);
		}
	}
	if ((GetIsObjectValid(object5) == 1)) {
		efNext = GetFirstEffect(object5);
		while ((GetIsEffectValid(efNext) == 1)) {
			if ((GetEffectType(efNext) == 62)) {
				RemoveEffect(object5, efNext);
			}
			efNext = GetNextEffect(object5);
		}
	}
}

