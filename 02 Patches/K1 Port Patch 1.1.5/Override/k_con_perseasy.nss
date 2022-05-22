//:: k_con_perseasy
/*
    perform and easy persuasion check
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
	return AutoDC(0, SKILL_PERSUADE, GetPCSpeaker());
}
