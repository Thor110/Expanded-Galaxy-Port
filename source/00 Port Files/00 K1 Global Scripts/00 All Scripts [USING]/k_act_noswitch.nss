//:: k_act_noswitch
/*
     Stops the switch back
     to the NPC focus after
     a conversation if the
     conversation was started
     by a party NPC and not
     the PC object.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    CancelPostDialogCharacterSwitch();
}
