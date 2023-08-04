//:: qa_master
/*
     Sets the kotor master variable
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nQA = GetRunScriptVar();
    SetGlobalNumber("K_KOTOR_MASTER", nQA);
}
