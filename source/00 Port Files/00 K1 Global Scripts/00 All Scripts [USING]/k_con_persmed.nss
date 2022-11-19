//:: k_con_persmed
/*
    perform a medium persuasion check
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
	return AutoDC(1, SKILL_PERSUADE, GetPCSpeaker());
}


