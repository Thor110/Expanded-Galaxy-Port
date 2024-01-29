int StartingConditional() {
	int int1 = (GetGlobalNumber("YAV_SUVAM") == 0);
	return int1;
  // Conditional works both ways . . .
/*
	if(GetGlobalNumber("YAV_SUVAM") == 0) {
    return TRUE;
  }
  else {
    return FALSE;
  }
*/
/*
	if( GetGlobalNumber("YAV_SUVAM") == 0 )
  {
    return TRUE;
  }
  return FALSE;
*/
}

