void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 0:
        {
            ActionResumeConversation();

        }
        break;
        case 10:
        {
            ActionStartConversation(GetFirstPC(),"man26_trial",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE);
        }

        break;
    }
}

