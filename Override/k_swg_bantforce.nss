///Bastila trips Mission with a Force power

void main()
{
    AssignCommand(GetObjectByTag("Mission"),PlayAnimation(ANIMATION_LOOPING_PRONE));
    ActionPauseConversation();
    ActionWait(2.0);
    ActionResumeConversation();
}
