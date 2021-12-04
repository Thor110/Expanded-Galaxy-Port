//:: k_def_blocked01
/*
    Default On Blocked Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_BLOCKED);
    /*
    object oDoor = GetBlockingDoor();
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetIsObjectValid(oDoor))
        {
            if(GetIsDoorActionPossible(oDoor, DOOR_ACTION_OPEN))
            {
                DoDoorAction(oDoor, DOOR_ACTION_OPEN);
            }
            else if(GetIsDoorActionPossible(oDoor, DOOR_ACTION_BASH))
            {
                DoDoorAction(oDoor, DOOR_ACTION_BASH);
            }
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_BLOCKED))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1009));
    }
    */
}
