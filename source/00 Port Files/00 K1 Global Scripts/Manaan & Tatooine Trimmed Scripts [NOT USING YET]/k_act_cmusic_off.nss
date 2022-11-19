//:: k_act_cmusic_off
/*
     Switchs the music from the ambient background track to the combat music track
*/
//:: Created By: Aidan Scanlan on March 20,03
//:: Copyright (c) 2002 Bioware Corp.
void main()
{
    object oArea = GetArea(OBJECT_SELF);
    MusicBattleStop(oArea);
    DelayCommand(0.1,MusicBackgroundPlay(oArea));
}
