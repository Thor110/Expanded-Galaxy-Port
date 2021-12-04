#include "k_inc_man"
int StartingConditional()
{
    return GetGlobalBoolean("MAN_REPDIQ_DONE") == FALSE &&
           UT_GetTalkedToBooleanFlag(OBJECT_SELF);
}
