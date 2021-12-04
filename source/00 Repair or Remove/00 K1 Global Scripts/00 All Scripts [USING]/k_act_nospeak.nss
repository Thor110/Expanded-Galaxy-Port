//:: k_act_nospeak
/*
     Marks that a specific NPC has been told to shut up on a specific planet
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    int nNPCConst = UT_GetNPCCode(OBJECT_SELF);
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    string sConstant = "NPC_INIT_PLANET_" + IntToString(nNPCConst);
    SetGlobalNumber(sConstant, nPlanet);
}

