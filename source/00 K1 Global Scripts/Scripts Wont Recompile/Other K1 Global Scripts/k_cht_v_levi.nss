#include "k_inc_debug"

void main()
{
    int nGlobal = GetGlobalNumber("K_CAPTURED_LEV");
    Db_PostString("K_CAPTURED_LEV = " + IntToString(nGlobal), 10, 10, 4.0);
}
