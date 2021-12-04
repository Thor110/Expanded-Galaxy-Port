#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    object oHostile = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF, 1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN);

    if (GetIsObjectValid(oHostile) && GetDistanceBetween(OBJECT_SELF, oHostile) < 40.0)
    {
        return TRUE;
    }
    return FALSE;
}
