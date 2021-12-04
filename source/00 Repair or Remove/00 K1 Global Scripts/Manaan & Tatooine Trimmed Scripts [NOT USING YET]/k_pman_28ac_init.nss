#include "k_inc_man"
void main()
{
    object oEnter = GetEnteringObject();
    if(GetIsPC(oEnter) &&
        UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
        AssignCommand(GetObjectByTag("man28_sur2"),ActionStartConversation(oEnter));
    }
}
