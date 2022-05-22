#include "k_inc_dan"
void main()
{
    PlaceNPC("dan14_handon");
    PlaceNPC("dan14_rickard");
    PlaceNPC("dan14_idroid");
   // PlaceNPC("dan14_bolook");
    CreateObject(OBJECT_TYPE_PLACEABLE,"dan14_corpse",GetLocation(GetObjectByTag("POST_dan14_corpse")));
}
