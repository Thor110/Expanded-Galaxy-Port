void main()
{
    if (Random(5) == 0) ActionPlayAnimation(ANIMATION_LOOPING_TALK_FORCEFUL);
    else if (Random(4) == 0)ActionPlayAnimation(ANIMATION_LOOPING_TALK_LAUGHING);
    else if (Random(3) == 0)ActionPlayAnimation(ANIMATION_LOOPING_TALK_SAD);
    else ActionPlayAnimation(ANIMATION_LOOPING_TALK_NORMAL);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
    ActionPlayAnimation(ANIMATION_LOOPING_TALK_NORMAL);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
    ActionPlayAnimation(ANIMATION_LOOPING_TALK_NORMAL);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
    ActionPlayAnimation(ANIMATION_LOOPING_TALK_NORMAL);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_BORED);

    ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(0)));
}
