#include "k_inc_debug"
#include "k_inc_utility"

// easy
void main()
{
    SetGlobalBoolean("MAN_PERS_DONE", FALSE);
    if (AutoDC(0, SKILL_PERSUADE, GetPCSpeaker()))
    {
        SetGlobalBoolean("MAN_PERS_DONE", TRUE);
        SetGlobalNumber("MAN_THRESHOLD", GetGlobalNumber("MAN_THRESHOLD") + 2);
    }
}
