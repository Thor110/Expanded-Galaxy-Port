// Causes shasa to initiate with the player
#include "k_inc_man"
void main()
{
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
        object oSith = GetObjectByTag("man27_sithmas");
        AssignCommand(oSith,ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    }
    DelayCommand(10.0f,SignalEvent(OBJECT_SELF,EventUserDefined(20)));
}
