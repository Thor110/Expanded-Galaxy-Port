#include "k_inc_end"
void main()
{
    object oTrask = GetObjectByTag("end_trask", 0);
    if(GetPartyMemberByIndex(0) == GetTrask())
    {
        SetLocked(OBJECT_SELF,FALSE);
        ActionOpenDoor(OBJECT_SELF);
        SetGlobalNumber("End_TraskTalk",5);
        //ActionStartConversation(GetFirstPC(),"end_trask01",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE);
        AssignCommand(oTrask, ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
  
    }
    else// if(GetGlobalNumber("End_TraskTalk") == 4 )
    {
      if(GetGlobalNumber("End_TraskTalk") == 4 ) {
        SetGlobalNumber("End_TraskTalk",6);
        AssignCommand(oTrask, ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
      }
    }
}
