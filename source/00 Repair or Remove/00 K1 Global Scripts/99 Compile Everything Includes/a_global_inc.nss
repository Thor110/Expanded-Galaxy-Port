
//:: a_global_inc
/*
    parameter 1 = string identifier for a global number
    parameter 2 = amount to increment GetGlobalNumber(param1)
*/
//:: Created By: Anthony Davis

#include "k_inc_debug"
void main()
{
    string tString = GetScriptStringParameter();
    int tInt = GetScriptParameter( 1 );

    SetGlobalNumber(tString, GetGlobalNumber(tString) + tInt);
}
