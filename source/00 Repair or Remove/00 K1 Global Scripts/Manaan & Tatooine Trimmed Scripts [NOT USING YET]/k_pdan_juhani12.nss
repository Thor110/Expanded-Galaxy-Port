//:: k_pdan_juhani12
/*
    This sets DAN_JEDI_PLOT to 4, showing that the player
    has removed the taint of the dark side from the grove.
    It also set DAN_JUHANI_PLOT to 3 to show that Juhani
    has been brought back to the light side.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    SetGlobalNumber("DAN_JEDI_PLOT", 4);
    SetGlobalNumber("DAN_JUHANI_PLOT", 3);
}

