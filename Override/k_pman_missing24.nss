///////////////////////////////////////////////////////////////////////
/*      k_pman_missing24
        Returns true if
        -Sasha has been found */
///////////////////////////////////////////////////////////////////////
#include "k_inc_man"
#include "k_inc_debug"
int StartingConditional()
{
    Db_PostString("var " + IntToString(GetGlobalNumber("MAN_MISSING_PLOT")));
    return GetMissingSelkathPlotVariable() > 1;
}
