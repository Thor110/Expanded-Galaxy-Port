#include "k_inc_man"
void main()
{
    int nInj = GetGlobalNumber("MAN_VOLUME_A");
    int nCon = GetGlobalNumber("MAN_VOLUME_B");
    nInj = nCon + nInj;
    nCon = 0;
    if (nInj > 3)
    {
        nCon = nInj - 3;
        nInj = 3;
    }
    SetGlobalNumber("MAN_VOLUME_A",nInj);
    SetGlobalNumber("MAN_VOLUME_B",nCon);
    SetCustomToken(15,IntToString(nInj));
    SetCustomToken(16,IntToString(nCon));
    PlayInjecterAnimation(GetGlobalNumber("MAN_VOLUME_A"));
    PlayContainerAnimation(GetGlobalNumber("MAN_VOLUME_B"));
}

