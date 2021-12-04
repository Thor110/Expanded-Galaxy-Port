#include "k_inc_utility"
void main()
{
    object oMonster = GetExitingObject();
    int nFaction = GetStandardFaction(oMonster);
    if (nFaction == STANDARD_FACTION_HOSTILE_1 ||
        nFaction == STANDARD_FACTION_HOSTILE_2 ||
        nFaction == STANDARD_FACTION_INSANE)
    {
        SignalEvent(oMonster,EventUserDefined(HOSTILE_RETREAT));
    }
}
