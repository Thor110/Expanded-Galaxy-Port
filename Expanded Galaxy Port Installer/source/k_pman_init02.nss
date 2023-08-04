#include "k_inc_man"
void main()
{
    object oElora = GetObjectByTag("man26_elora");
    if(IsObjectPartyMember(GetEnteringObject()) &&
       GetIsObjectValid(oElora) &&
       HasNeverTriggered())
    {
        AssignCommand(oElora,ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    }
}

