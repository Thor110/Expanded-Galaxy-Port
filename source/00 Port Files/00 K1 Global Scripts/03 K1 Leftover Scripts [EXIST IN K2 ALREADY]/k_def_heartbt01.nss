//:: k_def_heartbt01
/*
    Default heartbeat script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_HEARTBEAT);
    /*
    object oEnemy = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF,1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN);

    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GN_GetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS) || GN_GetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS_MOBILE))
        {
            string sWay = "WP_" + GetTag(OBJECT_SELF) + "_01";
            int nSeries = GetLocalNumber(OBJECT_SELF, WALKWAYS_SERIES_NUMBER);
            if(!GetIsObjectValid(GetObjectByTag(sWay)) && nSeries <= 0)
            {
                if(GetCurrentAction(OBJECT_SELF) != ACTION_MOVETOPOINT)
                {
                    if(!GN_GetIsFighting(OBJECT_SELF) && !GetIsObjectValid(oEnemy))
                    {
                        GN_PlayAmbientAnimation();
                    }
                }
            }
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1001));
    }
    */
}
