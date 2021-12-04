int StartingConditional() {
	if((GetGlobalBoolean("Tar_Destroyed") == 1) && (GetGlobalBoolean("Mission_Taris") == 0))
	{return TRUE;}
  else
  {return FALSE;}
}

