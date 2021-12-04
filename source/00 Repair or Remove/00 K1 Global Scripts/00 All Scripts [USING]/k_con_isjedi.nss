//:: k_con_isjedi
/*
    checks to see if pc is a jedi of some description
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
	return GetLevelByClass(CLASS_TYPE_JEDICONSULAR, GetPCSpeaker()) + GetLevelByClass(CLASS_TYPE_JEDIGUARDIAN, GetPCSpeaker()) + GetLevelByClass(CLASS_TYPE_JEDISENTINEL, GetPCSpeaker());
}

