//:: k_ren_taris03
/*
    Load the Fighter Mini-Game m12ab covered by Render 07_3
*/
//:: Created By: 
//:: Copyright (c) 2002 Bioware Corp.

//#include "k_inc_debug"
//#include "k_inc_stunt"

void main()
{
  SetGlobalNumber("K_CURRENT_PLANET",0);
  SetGlobalNumber("K_FUTURET_PLANET",0);
            SetGlobalNumber("003EBO_RETURN_DEST",5);
            SetGlobalNumber("003EBO_BACKGROUND",5);
    StartNewModule("ebo_m12aa","","11a","11b","","","","");
    //ST_PlayTarisEscape03();
    //StartNewModule("m12ab","","","","","","","");
    //StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

