//:: k_hen_retreat
/*
    Clears all actions
    and makes the NPC move to the leader
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_generic"

void main()
{
    /*
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetCurrentAction(GetPartyMemberByIndex(0)) != ACTION_ATTACKOBJECT &&
           GetCurrentAction(GetPartyMemberByIndex(0)) != ACTION_CASTSPELL &&
           GetDistanceBetween(GetAttackTarget(), GetPartyMemberByIndex(0)) > 20.0)
        {
            ClearAllActions();
            ActionFollowLeader();
            SetCommandable(FALSE);
        }
    }
    */
}
