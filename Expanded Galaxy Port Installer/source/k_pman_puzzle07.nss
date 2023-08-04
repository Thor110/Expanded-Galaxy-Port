#include "k_inc_man"
void main()
{
    SetGlobalNumber("MAN_VOLUME_B",5);
    SetCustomToken(16,IntToString(5));
    PlayContainerAnimation(GetGlobalNumber("MAN_VOLUME_B"));
}
