#include "k_inc_man"
void main()
{
    object oOpen = GetLastOpenedBy();
    if(GetIsPC(oOpen) &&
       UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
        CreateObject(OBJECT_TYPE_CREATURE,"man28_inssel04",GetLocation(GetObjectByTag("man28_spawn01")));
    }
}
