//:: k_hen_enter5m
/*
    Sets commandable true is needed.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_switch"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_ENTER_5m);
    /*
    SetCommandable(TRUE);
    if(GetCurrentAction(GetPartyMemberByIndex(0)) == ACTION_ATTACKOBJECT ||
       GetCurrentAction(GetPartyMemberByIndex(0)) == ACTION_CASTSPELL)
    {
        GN_DetermineCombatRound();
    }
    */
}
