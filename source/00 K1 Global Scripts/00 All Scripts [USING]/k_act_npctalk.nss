//:: k_act_npctalk
/*
    sets the NPC Talk trigger back to false
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"




void main()
{
     SetGlobalBoolean("G_NPC_talk",FALSE);
}
