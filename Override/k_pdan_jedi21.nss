//:: k_pdan_jedi21
/*
    Sets DAN_JUHANIQ_DONE to TRUE to show that the
    player has been told to find Juhani. If
    DAN_JUHANI_PLOT is greater than 1 (meaning that
    Juhani has already been killed), DAN_JEDI_PLOT is
    set to 4 to show that the quest has already been
    completed.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    SetGlobalBoolean("DAN_JUHANIQ_DONE", TRUE);
    if (GetGlobalNumber("DAN_JUHANI_PLOT") > 1)
        SetGlobalNumber("DAN_JEDI_PLOT", 4);
    else
        SetGlobalNumber("DAN_JUHANI_PLOT", 1);
}

