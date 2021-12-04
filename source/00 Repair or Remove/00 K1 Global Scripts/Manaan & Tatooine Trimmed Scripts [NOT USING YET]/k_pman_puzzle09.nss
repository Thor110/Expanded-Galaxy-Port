#include "k_inc_man"
void main()
{
    int nInj = GetGlobalNumber("MAN_VOLUME_A");
    int nCon = GetGlobalNumber("MAN_VOLUME_B");
    nCon = nCon + nInj;
    nInj = 0;
    if (nCon > 5)
    {
        nInj = nCon - 5;
        nCon = 5;
    }
    SetGlobalNumber("MAN_VOLUME_A",nInj);
    SetGlobalNumber("MAN_VOLUME_B",nCon);
    SetCustomToken(16,IntToString(nCon));
    SetCustomToken(15,IntToString(nInj));
    PlayInjecterAnimation(GetGlobalNumber("MAN_VOLUME_A"));
    PlayContainerAnimation(GetGlobalNumber("MAN_VOLUME_B"));
}
