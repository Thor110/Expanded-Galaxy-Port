//:: k_pdan_jedi12
/*
    Checks to see if DAN_JEDI_PLOT is 4 (meaning that
    the player has cleansed the grove) and DAN_ZHARJ_DONE
    is TRUE (meaning that Zhar has talked to the player
    about Juhani) and DAN_ZHARL_DONE is FALSE (meaning
    that Zhar has not yet talked to the player about
    fetching a lightsaber crystal).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 4) && (GetGlobalBoolean("DAN_ZHARJ_DONE") == TRUE) && (GetGlobalBoolean("DAN_ZHARL_DONE") == FALSE));

    return iResult;
}

