int StartingConditional() {
	if(GetGlobalNumber("END_CARTH_DLG") == 0)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

