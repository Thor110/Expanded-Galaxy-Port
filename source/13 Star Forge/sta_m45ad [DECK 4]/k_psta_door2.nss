int StartingConditional() {
	if(GetGlobalNumber("STA_DOOR45D") == 2)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

