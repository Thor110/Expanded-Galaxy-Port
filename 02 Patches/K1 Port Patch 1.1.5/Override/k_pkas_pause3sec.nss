//:: k_pkas_pause3sec
/*
     Pause conversation for 3 seconds.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    ActionPauseConversation();
    DelayCommand(3.0, ActionResumeConversation());
}
