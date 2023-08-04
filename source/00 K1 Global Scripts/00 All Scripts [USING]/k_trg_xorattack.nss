//:: k_trg_xorattack
/*
    If the global boolean K_XOR_AMBUSH is set to
    one then activate the encounter.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nBool = GetGlobalNumber("K_XOR_AMBUSH");
    if(nBool == 1)
    {
        SetEncounterActive(TRUE);
        //SetGlobalNumber("K_XOR_AMBUSH", 99);
    }
}
