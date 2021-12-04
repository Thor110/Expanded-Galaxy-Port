//:: k_pdan_juhani11
/*
    If DAN_JEDI_PLOT is 3 (the player has been told to
    find the source of the dark taint, roughly),
    DAN_JEDI_PLOT is set to 4 to show that the taint has
    been removed. DAN_JUHANI_PLOT is set to 2 to show that
    Juhani has been killed (change to an OnDeath event?).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    if (GetGlobalNumber("DAN_JEDI_PLOT") == 3)
        SetGlobalNumber("DAN_JEDI_PLOT", 4);
    SetGlobalNumber("DAN_JUHANI_PLOT", 2);
}

