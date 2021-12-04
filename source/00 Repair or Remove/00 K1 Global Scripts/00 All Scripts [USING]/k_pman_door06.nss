#include "k_inc_man"
void main()
{
    object oEnter = GetLastOpenedBy();
    if(GetIsPC(oEnter) &&
       UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
        AssignCommand(GetObjectByTag("man26_sithbuy"),
                      ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    }
    DelayCommand(10.0f,SignalEvent(OBJECT_SELF,EventUserDefined(20)));
}
