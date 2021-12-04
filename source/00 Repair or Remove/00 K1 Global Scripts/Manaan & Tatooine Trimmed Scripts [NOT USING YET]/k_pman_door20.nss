#include "k_inc_dan"
void main()
{
    if(HasNeverTriggered())
    {
        AssignCommand(GetObjectByTag("man26_sitharg"),ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    }
    DelayCommand(10.0f,SignalEvent(OBJECT_SELF,EventUserDefined(20)));
}
