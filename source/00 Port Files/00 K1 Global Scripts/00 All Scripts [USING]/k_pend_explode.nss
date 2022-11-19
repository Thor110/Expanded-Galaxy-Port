#include "k_inc_end"
void main()
{

    if(IsObjectPartyMember(GetEnteringObject())
       && UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
       UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
       DelayCommand(16.0,UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,FALSE));
       PlayExplosion();
    }
}
