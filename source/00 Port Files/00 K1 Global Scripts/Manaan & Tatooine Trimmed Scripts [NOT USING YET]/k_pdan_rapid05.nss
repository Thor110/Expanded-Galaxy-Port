#include "k_inc_man"
void main()
{
    if(GetIsPC(GetEnteringObject()))
    {
        if(GetGlobalBoolean("K_DAN_SWOOP_POINT_05") == FALSE)
        {
            SetGlobalBoolean("K_DAN_SWOOP_POINT_05",TRUE);
        }
        UT_SpawnMessenger();
    }
}
