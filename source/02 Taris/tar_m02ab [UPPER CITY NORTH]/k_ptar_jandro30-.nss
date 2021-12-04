//#include "k_inc_debug"

int StartingConditional()
{
    //int nComp = GetScriptParameter( 1 );
    if (GetGlobalNumber("Tar_JaniceDro") < 30)
        return TRUE;
    return FALSE;
}