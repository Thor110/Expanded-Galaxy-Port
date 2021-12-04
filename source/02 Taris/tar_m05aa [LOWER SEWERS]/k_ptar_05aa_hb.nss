void main() {
	object oTar05_tcceiling2 = GetObjectByTag("tar05_tcceiling2", 0);
	if ((GetGlobalNumber("TAR_TRASHTRAPON") > 0)) {
		SetGlobalNumber("TAR_TRASHTRAPON", (GetGlobalNumber("TAR_TRASHTRAPON") + 6));
	}
	if ((GetGlobalNumber("TAR_TRASHTRAPON") > 12)) {
		object oNPC;
		int int4;
		DelayCommand(1.0, AssignCommand(oTar05_tcceiling2, ActionPlayAnimation(201, 1.0, 0.0)));
		int4 = 0;
		while ((int4 < GetPartyMemberCount())) {
			oNPC = GetPartyMemberByIndex(int4);
			DelayCommand(1.0, ApplyEffectToObject(0, EffectDeath(0, 1), oNPC, 0.0));
			(int4++);
		}
		SetGlobalNumber("TAR_TRASHTRAPON", 0);
	}
}

