#include "k_inc_man"
void main()
{
    object oDiplomat = GetObjectByTag("man26_repdip");
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE &&
       GetGlobalNumber("MAN_PLANET_PLOT") >= 3)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
        DestroyObject(GetObjectByTag("man26_repint"));
        DestroyObject(GetObjectByTag("man26_sithpris"));
        AssignCommand(oDiplomat,JumpToObject(GetObjectByTag("man26_wp_repdipt")));
        AssignCommand(oDiplomat,ActionStartConversation(GetFirstPC(),"man26_repdipt"));
    }
    else if(GetGlobalBoolean("MAN_HRAKERT_START"))
    {
       // AurPostString("Okay",5,5,5.0);
        AssignCommand(oDiplomat,JumpToObject(GetObjectByTag("man26_wp_repdipt")));
        AssignCommand(oDiplomat,ActionStartConversation(GetFirstPC(),"man26_repdipt",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    }
    DelayCommand(10.0f,SignalEvent(OBJECT_SELF,EventUserDefined(20)));
}
