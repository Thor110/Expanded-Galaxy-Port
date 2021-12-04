int StartingConditional() {
	if((GetGlobalNumber("Ebo_Sasha_State") >= 10) && (GetGlobalNumber("Ebo_Sasha_State") < 40))
  {
    return TRUE;
  }
  else
  {
    return FALSE;
  }
}

