//:: qa_calo
/*
     Sets the Calo Nord / Darth Bandon variable
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nQA = GetRunScriptVar();
    SetGlobalNumber("K_KALO_BANDON", nQA);
}
