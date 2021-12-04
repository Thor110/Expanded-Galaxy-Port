#include "k_inc_man"
void main()
{
    object oEnter = GetEnteringObject();
    if(IsObjectPartyMember(oEnter) &&
       HasNeverTriggered())
    {
        object oRecruiter = GetObjectByTag("man26_repneg");
        AssignCommand(oRecruiter,ClearAllActions());
        AssignCommand(oRecruiter,
                      ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    }
}

