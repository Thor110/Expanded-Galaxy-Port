#include "k_inc_dan"
void main()
{
    if(GetIsPC(GetEnteringObject()))
    {
        if(GetGlobalBoolean("K_DAN_SWOOP_POINT_04") == FALSE)
        {
            SetGlobalBoolean("K_DAN_SWOOP_POINT_04",TRUE);
        }
        UT_SpawnMessenger();
    }
}

