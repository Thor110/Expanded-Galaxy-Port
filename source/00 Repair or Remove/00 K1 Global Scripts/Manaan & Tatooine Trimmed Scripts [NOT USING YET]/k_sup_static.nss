//:: k_sup_static
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
    int nRand = d4();
    
    if (nRand == 1)
    {
        ClearAllActions();
    }
    else if(nRand == 2)
    {
        ClearAllActions();
        object oFear = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY);
        ActionMoveAwayFromObject(oFear, TRUE, 10.0);
    }
    else if(nRand == 3)
    {
        ClearAllActions();
        ActionPlayAnimation(ANIMATION_LOOPING_HORROR, 1.0, 5.0);
    }
    SetCommandable(FALSE);
}
