//:: K_SWG_HK4712X
/*
     Checks if HK has talked to the player about being Revan
*/
//:: Created By:   Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
int StartingConditional()
{
    int iResult;

    iResult =  GetGlobalBoolean("K_SWG_HK47_KNOW") == TRUE &&
               GetGlobalBoolean("G_HK47_RevanTalk")==FALSE;
            //Global gets set to true after the player talks to HK about being Revan
    return iResult;
}
