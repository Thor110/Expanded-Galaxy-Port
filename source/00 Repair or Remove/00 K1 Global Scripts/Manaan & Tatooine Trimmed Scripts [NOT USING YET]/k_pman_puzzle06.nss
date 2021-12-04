#include "k_inc_man"
void main()
{
    SetGlobalNumber("MAN_VOLUME_A",3);
    SetCustomToken(15,IntToString(3));
    PlayInjecterAnimation(GetGlobalNumber("MAN_VOLUME_A"));
}
