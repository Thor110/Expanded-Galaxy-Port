int StartingConditional() {
	if(GetGlobalNumber("STA_DOOR45D") == 1)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

