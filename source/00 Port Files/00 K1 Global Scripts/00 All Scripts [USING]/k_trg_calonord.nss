//:: k_trg_calonord
/*
    This plot involves the PC being tracked across the galaxy.  Plot is tracked
    with the K_KALO_BANDON variable
    1 - Leaving Dantooine --> Cutscene with Calo Nord = 0, set to 10.
    2 - On 3rd Star Map Planet --> Next villain encounter will spawn Nord = 10, set to 20
    3 - Leaving 3rd Starmap Planet --> Darth Bandon cutscene = 20, set to 30.
    4 - On 4th Star Map planet --> Darth Bandon Attacks = 30, set to 99
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nCalo = GetGlobalNumber("K_KALO_BANDON");
    if(nCalo == 10)
    {
        SetGlobalNumber("K_KALO_BANDON", 20);
        SetEncounterActive(TRUE);
    }
}
