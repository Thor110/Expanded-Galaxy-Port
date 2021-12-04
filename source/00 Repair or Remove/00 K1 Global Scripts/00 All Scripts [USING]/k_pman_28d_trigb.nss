#include "k_inc_man"
void main()
{

   object oEnter = GetEnteringObject();
   if(GetIsPC(oEnter) &&
      UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
        object oBeast = GetObjectByTag("man28_seabeast");
        ChangeToStandardFaction(oBeast,STANDARD_FACTION_HOSTILE_1);
        AssignCommand(oBeast,ClearAllActions());
        AssignCommand(oBeast,ActionAttack(oEnter));
        SetCommandable(FALSE,oEnter);
    }
}
