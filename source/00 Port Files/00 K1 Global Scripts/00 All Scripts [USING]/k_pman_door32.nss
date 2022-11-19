#include "k_inc_dan"
void main()
{
    if(HasNeverTriggered())
    {
        UT_SetPlotBooleanFlag(GetObjectByTag("man26aa_myst01_trig"),SW_PLOT_BOOLEAN_05,TRUE);
        CreateObject(OBJECT_TYPE_CREATURE,"man26_mman",GetLocation(GetObjectByTag("man26_wp_myst01")));
    }
    DelayCommand(10.0f,SignalEvent(OBJECT_SELF,EventUserDefined(20)));
}
