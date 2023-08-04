void main()
{
    //AurPostString("New Actions",5,5,1.0);
    ClearAllActions();
    ActionMoveToObject(GetNearestObjectByTag("man26ad_rep01"),FALSE,0.5f);
    ActionPlayAnimation(ANIMATION_FIREFORGET_USE_COMPUTER);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_BORED);
    ActionMoveToObject(GetObjectByTag("man26ad_rep02"),FALSE,0.5f);
    ActionPlayAnimation(ANIMATION_LOOPING_GET_MID,1.0,2.0);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
    if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_BORED);
    ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(0)));
}
