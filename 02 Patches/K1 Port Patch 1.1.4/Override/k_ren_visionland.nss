//:: k_ren_visionland
/*
     Play the vision STUNT_00 land sequence
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

//#include "k_inc_debug"
//#include "k_inc_stunt"

void main()
{
    if(GetGlobalNumber("K_CURRENT_PLANET") == 5)
    {
        StartNewModule("tar_m02af","","01f","","","","","");
    }
    // the special circumstances for the Dantooine version of Stunt_00
    else if(GetGlobalBoolean("DAN_STUNT00"))
    {
        SetGlobalBoolean("DAN_STUNT00",FALSE);
        StartNewModule("danm13","","09","","","","","");
    }
    /*else
    {
        //ST_PlayVisionLanding();
    }*/
    else if(GetGlobalNumber("K_CURRENT_PLANET") == 30)
    {
      if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_korriban",TRUE);
      }
      StartNewModule("ebo_m12aa","","0d","05_7a");
    }
    else if(GetGlobalNumber("K_CURRENT_PLANET") == 20)
    {
      if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_kashyyyk",TRUE);
      }
      StartNewModule("ebo_m12aa","","0c","05_4a");
    }
    else if(GetGlobalNumber("K_CURRENT_PLANET") == 35)
    {
      if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_tatooine",TRUE);
      }
      StartNewModule("ebo_m12aa","","0a","05_3a");
    }
    else if(GetGlobalNumber("K_CURRENT_PLANET") == 25)
    {
      if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_manaan",TRUE);
      }
      StartNewModule("ebo_m12aa","","0b","05_5a");
    }
}

