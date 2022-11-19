#include "k_inc_end"
void main()
{
    int nTraskState = GetGlobalNumber("END_TRASK_DLG");
    if(nTraskState == 10 && HealingDone())
    {
        SetGlobalNumber("END_TRASK_DLG",11);
    }
    else if(nTraskState == 11)
    {
        SetGlobalNumber("END_TRASK_DLG",12);
    }
    object oSpeaker = GetPartyMemberByIndex(1);
    AssignCommand(oSpeaker,ClearAllActions());
    AssignCommand(oSpeaker,ActionStartConversation(GetPartyMemberByIndex(0),"end_trask01",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    //AssignCommand(oSpeaker,JumpToObject(GetPartyMemberByIndex(0)));

}
