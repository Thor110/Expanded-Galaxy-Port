///////////////////////////////////////////////////////////////////////
/*      k_pman_missing40
        -Sets a global to indicate the plot has been give
        -Set the local talked to boolean which will deactivate his
         nearby initiation trigger  */
///////////////////////////////////////////////////////////////////////
#include "k_inc_man"
void main()
{
    SetGlobalBoolean("MAN_SHALASQ_DONE", TRUE);
    UT_SetTalkedToBooleanFlag(OBJECT_SELF);
}
