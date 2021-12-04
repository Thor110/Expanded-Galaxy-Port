void main() {

  object oG_T_TRAP002 = GetObjectByTag("G_T_TRAP002", 0);
	if (GetIsObjectValid(oG_T_TRAP002)) {
		DestroyObject(oG_T_TRAP002, 0.0, 1, 0.0);
	}
	object oKor39_kor36 = GetObjectByTag("kor39_kor36", 0);
	SetLocked(oKor39_kor36, 0);
	object oKor39_dooracid = GetObjectByTag("kor39_dooracid", 0);
	SetLocked(oKor39_dooracid, 0);
	object oK39_door_starmap = GetObjectByTag("k39_door_starmap", 0);
	SetLocked(oK39_door_starmap, 0);
	object oK39_way_yuthexit = GetObjectByTag("k39_way_yuthexit", 0);
	SetGlobalNumber("KOR_FINAL_TEST", 5);

	//if ((IsAvailableCreature(0) == 0)) {
    AddAvailableNPCByTemplate(9, "kor39_yuthura");
    //SetAreaUnescapable(0);
		DelayCommand(0.1, ShowPartySelectionGUI("k_pend_reset", 9, 0xFFFFFFFF));
		DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0));
  //}
}

