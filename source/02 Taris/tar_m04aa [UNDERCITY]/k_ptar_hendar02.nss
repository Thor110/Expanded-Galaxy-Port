int StartingConditional() {
	if((GetGlobalNumber("Tar_Hendar") == 2) && (GetGlobalBoolean("tar_hendarhelp") == 0))
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

