int StartingConditional() {
	if((GetGlobalNumber("Tar_Hendar") == 1) && (GetGlobalNumber("tar_hendar") != 2))
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

