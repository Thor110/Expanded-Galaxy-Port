//:: k_ren_visionland
/*
     Play the vision STUNT_00 land sequence
*/
//:: Created By: Preston Watamaniuk & Modified by Thor110 for the Expanded Galaxy Project
//:: Copyright (c) 2002 Bioware Corp.

//#include "k_inc_debug"
//#include "k_inc_stunt"

void main()
{
  if(GetGlobalNumber("K_CURRENT_PLANET") == 5)
  {
    StartNewModule("tar_m02af","","01f");
  }
  else if(GetGlobalBoolean("DAN_STUNT00"))// the special circumstances for the Dantooine version of Stunt_00
  {
    SetGlobalBoolean("DAN_STUNT00",FALSE);
    StartNewModule("danm13","","09");
  }
  else
  {
    StartNewModule("ebo_m12aa");
  }
}

