#include "k_inc_debug"

void main()
{
    int nGlobal = GetGlobalNumber("K_STAR_MAP");
    Db_PostString("K_STAR_MAP = " + IntToString(nGlobal), 10, 10, 4.0);
}
