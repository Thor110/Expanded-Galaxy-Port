//:: k_ren_nextplanet
/*
     Go to the next planet after a STUNT
     scene and play a vision or not.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_stunt"

void main()
{
  if(GetGlobalNumber("K_CURRENT_PLANET") == 3)
  {
    if(GetGlobalBoolean("k_vis_korriban") == 0)
    {
      StartNewModule("stunt_00","","07_1");
    }
  }
  if(GetGlobalNumber("K_CURRENT_PLANET") == 11)
  {
    if(GetGlobalBoolean("k_vis_kashyyyk") == 0)
    {
      StartNewModule("stunt_00","","07_1");
    }
  }
  if(GetGlobalNumber("K_CURRENT_PLANET") == 14)
  {
    if(GetGlobalBoolean("k_vis_tatooine") == 0)
    {
      StartNewModule("stunt_00","","07_1");
    }
  }
  if(GetGlobalNumber("K_CURRENT_PLANET") == 15)
  {
    if(GetGlobalBoolean("k_vis_manaan") == 0)
    {
      StartNewModule("stunt_00","","07_1");
    }
  }
}

