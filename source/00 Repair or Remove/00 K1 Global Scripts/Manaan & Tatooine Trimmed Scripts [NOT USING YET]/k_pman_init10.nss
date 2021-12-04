#include "k_inc_man"
void main()
{
    object oSith = GetObjectByTag("man26_sithac");
                object oRep = GetObjectByTag("man26_repac");
    if(IsObjectPartyMember(GetEnteringObject()))
    {
        if(HasNeverTriggered())
        {
            AssignCommand(oRep,ActionStartConversation(GetFirstPC(),
                                                   "",
                                                   FALSE,
                                                   CONVERSATION_TYPE_CINEMATIC,
                                                   TRUE));
        }
        else if(GetGlobalBoolean("MAN_SITHBASE_SEALED") &&
                GetGlobalNumber("MAN_MURDER_PLOT") < 3 &&
                UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
        {
            UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
            UT_SetPlotBooleanFlag(oSith,SW_PLOT_BOOLEAN_01,TRUE);
            AssignCommand(oSith,ActionStartConversation(GetFirstPC(),
                                                   "",
                                                   FALSE,
                                                   CONVERSATION_TYPE_CINEMATIC,
                                                   TRUE));
        }
    }
}
