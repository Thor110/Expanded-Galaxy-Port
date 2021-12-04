int StartingConditional() {
	if(((GetGlobalBoolean("k_mika_kolto") == 0) && (GetGlobalNumber("MAN_PLANET_PLOT") == 4)) && (GetGlobalNumber("k_Exchange_Store") >= 10))
	{return TRUE;}
  else
  {return FALSE;}
}

