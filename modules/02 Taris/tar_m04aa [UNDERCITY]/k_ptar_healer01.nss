int StartingConditional() {
	if(GetGlobalBoolean("TAR_HEAL_TALK") == 0)
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

