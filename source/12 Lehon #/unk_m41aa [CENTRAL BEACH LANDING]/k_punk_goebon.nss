void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		object oNearest = GetNearestCreature(3, 1, GetFirstPC(), 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);

//SetGlobalNumber("GBL_MAIN_SITH_LORD",4);


if (GetGlobalNumber("GBL_GAME_COMPLETE")==0) {
		if (((!GetIsObjectValid(oNearest)) || (GetDistanceBetween(GetFirstPC(), oNearest) > 30.0))) {
			StartNewModule("ebo_m41aa", "K_EBN_RAMP_ENTRANCE", "", "", "", "", "", "");
		}
		else {
			//BarkString(OBJECT_INVALID, 42402);
		}
}
else{
  StartNewModule("ebo_m12aa", "K_EBN_RAMP_ENTRANCE", "", "", "", "", "", "");
}
	}
}

