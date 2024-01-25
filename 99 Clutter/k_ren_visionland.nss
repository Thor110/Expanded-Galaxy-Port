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
    StartNewModule("tar_m02af","","01f");
  }
  // the special circumstances for the Dantooine version of Stunt_00
  else if(GetGlobalBoolean("DAN_STUNT00"))
  {
    SetGlobalBoolean("DAN_STUNT00",FALSE);
    StartNewModule("danm13","","09","","","","","");
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 3)
  {
    if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
    {
      SetGlobalBoolean("k_vis_korriban",TRUE);
    }
    SetGlobalNumber("003EBO_RETURN_DEST",6);
    SetGlobalNumber("003EBO_BACKGROUND",6);
    StartNewModule("ebo_m12aa","","0d","05_7a");
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 11)
  {
    if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
    {
      SetGlobalBoolean("k_vis_kashyyyk",TRUE);
    }
    SetGlobalNumber("003EBO_RETURN_DEST",11);
    SetGlobalNumber("003EBO_BACKGROUND",11);// background check fires different planet exit
    StartNewModule("ebo_m12aa","","0c","05_4a");
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 14)
  {
    if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
    {
      SetGlobalBoolean("k_vis_tatooine",TRUE);
    }
    SetGlobalNumber("003EBO_RETURN_DEST",14);
    SetGlobalNumber("003EBO_BACKGROUND",14);
    StartNewModule("ebo_m12aa","","0a","05_3a");
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 15)
  {
    if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
    {
      SetGlobalBoolean("k_vis_manaan",TRUE);
    }
    SetGlobalNumber("003EBO_RETURN_DEST",15);
    SetGlobalNumber("003EBO_BACKGROUND",15);
    StartNewModule("ebo_m12aa","","0b","05_5a");
  }
  /*else
  {
    //ST_PlayVisionLanding();
  }*/
// create a switch or add more cases for other planets?
//no need as the leviathan sequence only happens when travelling to the final star map planet.
}
