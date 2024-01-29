#include "k_inc_end"
void main()
{
    object oTrask = GetObjectByTag("end_trask", 0);
    object oDoor = GetObjectByTag("end_door01",0);
    if(GetPartyMemberByIndex(0) == GetTrask())
    {
        SetLocked(OBJECT_SELF,FALSE);
        ActionOpenDoor(OBJECT_SELF);
        SetGlobalNumber("End_TraskTalk",5);
        //ActionStartConversation(GetFirstPC(),"end_trask01",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE);
        AssignCommand(oTrask, ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
  
    }
    else// if(GetPartyMemberByIndex(-1) == GetFirstPC())
// if(GetGlobalNumber("End_TraskTalk") == 4 )
    {
      if(GetGlobalNumber("End_TraskTalk") == 6 ) {
        //SetGlobalNumber("End_TraskTalk",6);
        AssignCommand(oTrask, ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
      }
      else {
        //AssignCommand(oTrask, ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
        AssignCommand(oDoor, ActionStartConversation(GetFirstPC(), "end_door01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
      }
    }
}
