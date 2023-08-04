int StartingConditional() {
  int nLevel = GetHitDice( GetFirstPC () );
  object oTrask = GetObjectByTag("end_trask", 0);
  // If PC's level is greater than or equal to Param1, return TRUE.
  if ( nLevel >= 1 ) {
    ActionOpenDoor(GetObjectByTag("end_door15"));
    return TRUE;
  }
  else {
    AssignCommand(oTrask, ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
    return FALSE;
  }
}

