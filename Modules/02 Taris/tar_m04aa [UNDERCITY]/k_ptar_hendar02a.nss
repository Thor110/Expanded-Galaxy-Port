int StartingConditional() {
	if((GetGlobalNumber("Tar_Hendar") == 2) && (GetGlobalBoolean("tar_hendarhelp") == 1))
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

