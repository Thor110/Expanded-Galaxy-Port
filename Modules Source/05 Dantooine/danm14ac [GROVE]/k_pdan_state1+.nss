int StartingConditional() {
	if(GetGlobalNumber("DAN_BOLOOK_STATE") >= 1)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

