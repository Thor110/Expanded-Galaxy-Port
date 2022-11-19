//:: k_ptat_sharleave
/*
     Sharina leaves.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    object oExit = GetObjectByTag("tat17_sharexit");

    SetGlobalFadeOut(0.0, 3.0);

    ActionPauseConversation();
    ActionMoveToObject(oExit, TRUE);
    ActionResumeConversation();
}
