void main()
{
    ActionPlayAnimation(ANIMATION_LOOPING_PAUSE3);
    if(Random(3) == 0) ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
    if(Random(3) == 0) ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
    if(Random(2) == 0)ActionPlayAnimation(ANIMATION_LOOPING_PAUSE2);
    if(Random(3) == 0) ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
    if(Random(3) == 0) ActionPlayAnimation(ANIMATION_FIREFORGET_ACTIVATE);
   ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(0)));
}
