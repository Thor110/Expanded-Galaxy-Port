//:: k_act_commusicon
/*
     Switchs the music from the ambient background track to the combat music track
*/
//:: Created By: Aidan Scanlan on March 20,03
//:: Copyright (c) 2002 Bioware Corp.
void main()
{
    object oArea = GetArea(OBJECT_SELF);
    MusicBackgroundStop(oArea);
    DelayCommand(0.1,MusicBattlePlay(oArea));
}
