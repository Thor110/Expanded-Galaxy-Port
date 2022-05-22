#include "k_inc_dan"
/////////////////////////////////////////////////////
// This script will award the modules current stealth xp
// Aidan-Feb 18,03
/////////////////////////////////////////////////////
void main()
{
    if(IsObjectPartyMember(GetEnteringObject()) &&
       HasNeverTriggered())
    {
        AwardStealthXP(GetFirstPC());
    }
}
