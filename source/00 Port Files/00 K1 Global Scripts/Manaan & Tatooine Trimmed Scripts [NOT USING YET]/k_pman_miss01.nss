#include "k_inc_man"
void main()
{
    object oEnter = GetEnteringObject();
    if(IsObjectPartyMember(oEnter) &&
       GetGlobalBoolean("MAN_SHALASQ_DONE")  &&
       HasNeverTriggered())
    {
        SignalEvent(GetObjectByTag("man27_seljed5"),EventUserDefined(10));
    }
}
