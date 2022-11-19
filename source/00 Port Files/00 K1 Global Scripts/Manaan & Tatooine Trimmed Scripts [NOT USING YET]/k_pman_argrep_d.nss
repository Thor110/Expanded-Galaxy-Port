void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 10:
        {
            ClearAllActions();
            ActionForceMoveToObject(GetObjectByTag("group_" + GetTag(OBJECT_SELF)));
            ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("face_rep"))));
            ActionDoCommand(SetCommandable(TRUE));
            ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(20)));
            SetCommandable(FALSE);
        }

        break;
        case 20:
        {
            if (Random(5) == 0) ActionPlayAnimation(ANIMATION_LOOPING_TALK_FORCEFUL);
            else if (Random(4) == 0)ActionPlayAnimation(ANIMATION_LOOPING_TALK_LAUGHING);
            else if (Random(3) == 0)ActionPlayAnimation(ANIMATION_LOOPING_TALK_SAD);
            else ActionPlayAnimation(ANIMATION_LOOPING_TALK_NORMAL);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT);
            if(Random(3) == 0)ActionPlayAnimation(ANIMATION_FIREFORGET_PAUSE_BORED);

            ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(20)));

        }
        break;
    }
}

