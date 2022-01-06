int StartingConditional() {
	if(GetGlobalNumber("STA_MALAK_TALK") == 1)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

