#include "k_inc_man"
void main()
{
    SetGlobalNumber("MAN_VOLUME_A",0);
    SetCustomToken(15,IntToString(0));
    PlayInjecterAnimation(GetGlobalNumber("MAN_VOLUME_A"));
}
