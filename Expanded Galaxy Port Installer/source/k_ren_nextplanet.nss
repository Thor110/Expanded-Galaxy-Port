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
  switch(GetGlobalNumber("K_CURRENT_PLANET"))
  {
    case 3:
    {
      StartNewModule("stunt_00","","07_1");
    }break;
    case 8:
    {
      StartNewModule("ebo_m12aa","","KorMov01");
    }break;
    case 11:
    {
      StartNewModule("stunt_00","","07_1");
    }break;
    case 13:
    {
      StartNewModule("ebo_m12aa","","LIVE_1a");
    }break;
    case 14:
    {
      StartNewModule("stunt_00","","07_1");
    }break;
    case 15:
    {
      StartNewModule("stunt_00","","07_1");
    }break;
  }
}


