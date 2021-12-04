//:: k_sup_fear
/*
1   SW_PHYCHIC_STATIC         k_sup_static
2   SW_INSANE                 k_sup_insane
3   SW_FEAR                   k_sup_fear
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    SetCommandable(TRUE);
    ClearAllActions();
    object oFear = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY);
    ActionMoveAwayFromObject(oFear, TRUE, 10.0);
    SetCommandable(FALSE);
}
