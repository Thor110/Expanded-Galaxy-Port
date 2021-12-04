#include "k_inc_man"
void main()
{
    ActionPauseConversation();
    PlaceNPC("man27_sithdip");
    PlaceNPC("pman_sithwara");
    PlaceNPC("pman_sithwarb");
    PlaceNPC("pman_sithwarc");
    PlaceNPC("pman_sithward");
    ActionWait(3.0);
    ActionResumeConversation();
}
