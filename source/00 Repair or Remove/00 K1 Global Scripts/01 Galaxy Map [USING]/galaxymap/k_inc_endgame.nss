//::///////////////////////////////////////////////
//:: Name k_inc_endgame
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
     This include houses all of the stunt/render
     calls for the end game. This will be for
     modules sta_m45ac and sta_m45ad.
*/
//:://////////////////////////////////////////////
//:: Created By: Brad Prince
//:: Created On: Mar 6, 2003
//:://////////////////////////////////////////////

///////////////////////
// LIGHT SIDE scenes //
///////////////////////

// SCENE 1 BO2 - Player kills Bastila on sta_m45ac
void ST_PlayBastilaLight();
// SCENE 2 C01 - Player returns after watching SCENE 1.
void ST_PlayReturnToStarForgeLight();
// SCENE 3 A - Star Forge under attack.
void ST_PlayStarForgeUnderAttack();
// SCENE 4 B - End game credits - Light.
void ST_PlayEndCreditsLight();

//////////////////////////////////////////////////

//////////////////////
// DARK SIDE scenes //
//////////////////////

// SCENE 1 B01 - Bastila leaves party to meditate before generator puzzle.
void ST_PlayBastilaDark();
// SCENE 2 C - Player returns after watching SCENE 1.
void ST_PlayReturnToStarForgeDark();
// SCENE 3 A - The Republic dies.
void ST_PlayRepublicDies();
// SCENE 4 B - The Sith Ceremony.
void ST_PlaySithCeremony();
// SCENE 5 C - End game credits - Dark.
void ST_PlayEndCreditsDark();

//////////////////////////////////////////////////
//                  FUNCTIONS                   //
//////////////////////////////////////////////////

///////////////////////
// LIGHT SIDE scenes //
///////////////////////

// SCENE 1 BO2 - Player kills Bastila on sta_m45ac
void ST_PlayBastilaLight()
{
    StartNewModule("STUNT_50a","", "50b");
}

// SCENE 2 C01 - Player returns after watching SCENE 1.
void ST_PlayReturnToStarForgeLight()
{
    StartNewModule("sta_m45ac","K_LAST_LOCATION", "50");
}

// SCENE 3 A - Star Forge under attack.
void ST_PlayStarForgeUnderAttack()
{
    StartNewModule("STUNT_56a","", "56");
}

// SCENE 4 B - End game credits - Light.
void ST_PlayEndCreditsLight()
{
    StartNewModule("STUNT_57","", "56b");
}

//////////////////////////////////////////////////

//////////////////////
// DARK SIDE scenes //
//////////////////////

// SCENE 1 B01 - Bastila leaves party to meditate before generator puzzle.
void ST_PlayBastilaDark()
{
    StartNewModule("STUNT_51a","", "54");
}

// SCENE 2 C - Player returns after watching SCENE 1.
void ST_PlayReturnToStarForgeDark()
{
    StartNewModule("sta_m45ac","sta_bast_pc_move0", "51b");
}

// SCENE 3 A - The Republic dies.
void ST_PlayRepublicDies()
{
    StartNewModule("STUNT_54a","", "51");
}

// SCENE 4 B - The Sith Ceremony.
void ST_PlaySithCeremony()
{
    StartNewModule("STUNT_55a","", "54b");
}

// SCENE 5 C - End game credits - Dark.
void ST_PlayEndCreditsDark()
{
    StartNewModule("STUNT_57","", "56b");
}
