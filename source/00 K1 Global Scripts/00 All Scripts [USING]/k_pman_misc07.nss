#include "k_inc_man"
int StartingConditional()
{
    int bCondition = UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01);
    UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,FALSE);
    return bCondition;
}
