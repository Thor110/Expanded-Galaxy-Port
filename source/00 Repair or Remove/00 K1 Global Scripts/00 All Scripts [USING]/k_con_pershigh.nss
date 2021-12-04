//:: k_con_pershigh
/*
    perform a high persuasion check
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
	return AutoDC(2, SKILL_PERSUADE, GetPCSpeaker());
}

