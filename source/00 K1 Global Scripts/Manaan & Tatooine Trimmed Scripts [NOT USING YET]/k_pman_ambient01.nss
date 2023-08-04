void main()
{
    ActionPlayAnimation(ANIMATION_FIREFORGET_USE_COMPUTER);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_BORED);

    ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(0)));
}
