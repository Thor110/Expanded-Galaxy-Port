void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch(nEvent)
    {
        case 10:
        {
            ActionPlayAnimation(ANIMATION_LOOPING_PAUSE3);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_BORED);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
            ActionPlayAnimation(ANIMATION_LOOPING_PAUSE);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
            //if(Random(100) == 0) ActionPlayAnimation(ANIMATION_LOOPING_DANCE);
            ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(10)));
            //AurPostString("Fireing",5,5,5.0);
        }
    }
}
