#include "k_inc_end"
void main()
{
    int nState = GetTraskState();
    if(nState < TRASK_DOOR_JAMMED)
    {
        SetTraskState(TRASK_DOOR_JAMMED);

    }
    TalkTrask();
    //object oSpeaker = GetPartyMemberByIndex(1);
    //object oListener = GetPartyMemberByIndex(0);
    //AssignCommand(oSpeaker, ActionStartConversation(oListener,"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
}
