//:: k_trg_senni
/*
     Spawn in Senni Vek, init dialog with player
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()

 {
    if (GetGlobalNumber("K_Genoharadan")==0 &&
        GetGlobalBoolean("Calo_spawned")==0)
         {
         ActionStartConversation(GetFirstPC());
         }

 }

