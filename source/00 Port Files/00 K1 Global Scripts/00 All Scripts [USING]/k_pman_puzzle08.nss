#include "k_inc_man"
void main()
{
    SetGlobalNumber("MAN_VOLUME_B",0);
    SetCustomToken(16,IntToString(0));
    PlayContainerAnimation(GetGlobalNumber("MAN_VOLUME_B"));
}
