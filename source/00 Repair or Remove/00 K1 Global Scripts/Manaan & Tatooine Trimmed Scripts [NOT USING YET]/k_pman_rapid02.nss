#include "k_inc_man"
void main()
{
    if(GetIsPC(GetEnteringObject()))
    {
        if(GetGlobalBoolean("K_MAN_SWOOP_POINT_02") == FALSE)
        {
            SetGlobalBoolean("K_MAN_SWOOP_POINT_02",TRUE);
        }
        UT_SpawnMessenger();
    }
}
