//#include "k_inc_debug"

int StartingConditional()
{
    if(GetGlobalNumber("Tar_Droid") < 10)
      return TRUE;
    return FALSE;
}