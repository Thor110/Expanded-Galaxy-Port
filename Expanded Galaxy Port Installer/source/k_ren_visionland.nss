//:: k_ren_visionland
/*
     Play the vision STUNT_00 land sequence
*/
//:: Created By: Preston Watamaniuk & Modified by Thor110 for the Expanded Galaxy Project
//:: Copyright (c) 2002 Bioware Corp.

//#include "k_inc_debug"
//#include "k_inc_stunt"

int nCurrent = GetGlobalNumber("K_CURRENT_PLANET");

void main()
{
	switch(nCurrent)
  {
    case 5:
    {
      StartNewModule("tar_m02af","","01f");
	  }break;
    case 3:
    {
      StartNewModule("ebo_m12aa","","0d","05_7a");
	  }break;
    case 11:
    {
      StartNewModule("ebo_m12aa","","0c","05_4a");
	  }break;
    case 14:
    {
      StartNewModule("ebo_m12aa","","0a","05_3a");
	  }break;
    case 15:
    {
      StartNewModule("ebo_m12aa","","0b","05_5a");
	  }break;
	}
}

