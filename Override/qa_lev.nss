//:: qa_lev
/*
     Sets the leviathan capture variable
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nQA = GetRunScriptVar();
    SetGlobalNumber("K_CAPTURED_LEV", nQA);
}
