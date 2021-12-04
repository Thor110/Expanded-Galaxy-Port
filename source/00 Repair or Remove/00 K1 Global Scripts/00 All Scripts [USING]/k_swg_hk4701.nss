//:: script name
/*
    HK-47 can now be operated upon
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nFix = GetGlobalNumber("K_SWG_HK47_FIX");
    if (nFix == 0)
    {
        SetGlobalNumber("K_SWG_HK47_FIX", 1);
    }
}
