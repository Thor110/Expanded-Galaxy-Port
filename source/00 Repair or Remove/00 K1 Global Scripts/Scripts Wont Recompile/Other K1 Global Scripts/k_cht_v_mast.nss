#include "k_inc_debug"

void main()
{
    int nGlobal = GetGlobalNumber("K_KOTOR_MASTER");
    Db_PostString("K_KOTOR_MASTER = " + IntToString(nGlobal), 10, 10, 4.0);
}
