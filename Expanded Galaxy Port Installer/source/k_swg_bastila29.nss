//:: k_swg_bastila29
/*
    Simple fade to black. . .
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
void main()
{
    ActionPauseConversation();
    SetGlobalFadeIn(0.0, 1.5);
    ActionWait(1.5);
    ActionResumeConversation();
}
