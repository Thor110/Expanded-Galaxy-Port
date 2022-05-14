//:: Stunt/Render Include
/*
     This Include File runs
     the stunt and cutscenes
     for the game.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

//INDIVIDUAL STUNT MODULE CALLS ******************************************************************************************************

//LEV_A: Pulled out of hyperspace by the Leviathan, load STUNT_16
void ST_PlayLevCaptureStunt();
//LEV_A: Capture by the Leviathan, load ebo_m40aa
void ST_PlayLevCaptureStunt02();
//Load Turret Module Opening 07_3
void ST_PlayStuntTurret_07_3();
//Plays the Bastila torture scene
void ST_PlayBastilaTorture();
//Load Turret Module Opening 07_4
void ST_PlayStuntTurret_07_4();
//Load Leviathan Bombardment Stunt_06 covered by Render 5
void ST_PlayTarisEscape();
//Load Stunt_07 covered by Render 6a and 05_1C
void ST_PlayTarisEscape02();
//Load the Fighter Mini-Game m12ab covered by Render 07_3
void ST_PlayTarisEscape03();
//Load Dantooine module covered by hyperspace and dant landing
void ST_PlayDantooineLanding();
//Leaving Dantooine for the first time, going to STUNT_12 covered by Dant takeoff and hyperspace
void ST_PlayDantooineTakeOff();
//Plays the correct vision based on the value of K_FUTURE_PLANET from a stunt module
void ST_PlayVisionStunt();
//Plays the correct vision based on the value of K_FUTURE_PLANET with a take-off
void ST_PlayVisionStunt02();
//Plays the starforge approach
void ST_PlayStarForgeApproach();
//Plays the Damage Ebon Hawk Stunt scene
void ST_PlayStunt35();
//Shows the crash landing on the Unknown World
void ST_PlayUnknownWorldLanding();
//Shows the take-off from the Unknown World
void ST_PlayUnknownWorldTakeOff();
//Landing on the Star Forge
void ST_PlayStarForgeLanding();
//Goes to the Leviathan Mini-Game covered by the Escape Render
void ST_PlayLeviathanEscape01();

//UBER FUNCTIONS *********************************************************************************************************************

//This determines what to play after a Fighter Mini Game is run
void ST_PlayPostTurret();
//Play the appropriate take off render
string ST_GetTakeOffRender();
//Play the appropriate landing render
string ST_GetLandingRender();
//Plays the appropriate landing sequence for the chosen planet unless Lev or Star Forge
void ST_PlayGenericLanding();
//This determines what planet the PC is taking off of and plays the STUNT_14 in the appropriate manner
void ST_PlayStunt14();
//Checks if the planet designated as K_FUTURE_PLANET has had a vision played for it
int ST_VisionPlayed();
//With no cutscene between planets the game can go to a vision or straight to another planet.
void ST_PlayPlanetToPlanet();
//Play the transition from a vision to a particular planet.  This is only called at the end of a Vision STUNT_00
void ST_PlayVisionLanding();
//Fetches the correct Starmap Vision Render
string ST_GetStarmapVisionRender();
//This gets the current planet that the character is on and determines what skybox to set for the Ebon Hawk.
void ST_SetEbonHawkSkyBox();
// Fetches the correct Starmap Vision Render for the planet the player is currently on
string ST_GetCurrentStarmapVisionRender();
// Allows the Ebon Hawk to continue to the selected planet after the Leviathan unless that planet is Dantooine.
void ST_PlayPostEbo_m40ad();

void ST_MyPrintString(string sString);
void ST_MyPostString(string sString);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////// SINGLE STUNT/RENDER CALLS /////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Load Leviathan Bombardment Stunt_06 covered by Render 5
void ST_PlayTarisEscape()
{
    StartNewModule("stunt_06", "", "05");
}
//Load Stunt_07 covered by Render 6a and 05_1C
void ST_PlayTarisEscape02()
{
    StartNewModule("stunt_07", "", "06a", "05_1C");
}
//Load the Fighter Mini-Game m12ab covered by Render 07_3
void ST_PlayTarisEscape03()
{
    SetGlobalNumber("K_TURRET_SKYBOX", 5);
    StartNewModule("m12ab", "", "11a");
}
//Load Dantooine danm13 module covered by hyperspace and dant landing
void ST_PlayDantooineLanding()
{
    SetGlobalNumber("K_CURRENT_PLANET", 15);
    StartNewModule("danm13aa","","05_2A");
}

//LEV_A: Pulled out of hyperspace by the Leviathan, load STUNT_16
void ST_PlayLevCaptureStunt()
{
    //string sRender = ST_GetTakeOffRender();
    SetGlobalNumber("K_CURRENT_PLANET", 40);
    StartNewModule("stunt_16", "",  "", "08");//sRender
}
//LEV_A: Capture by the Leviathan, load ebo_m40aa
void ST_PlayLevCaptureStunt02()
{
    StartNewModule("ebo_m40aa","", "17");
}
//Plays the Bastila torture scene
void ST_PlayBastilaTorture()
{
    StartNewModule("stunt_18", "", ST_GetTakeOffRender(), "08");
}
//Load Turret Module Opening 07_3
void ST_PlayStuntTurret_07_3()
{
    StartNewModule("m12ab","",  "11a");
}
//Load Turret Module Opening 07_4
void ST_PlayStuntTurret_07_4()
{
    StartNewModule("m12ab","",  "11a");
}
//Leaving Dantooine for the first time
void ST_PlayDantooineTakeOff()
{
    //StartNewModule("stunt_12","", "05_2C", "08");
    StartNewModule("stunt_12");
}
//Plays the correct vision based on the value of K_FUTURE_PLANET
void ST_PlayVisionStunt()
{
    StartNewModule("stunt_00","", "07_1");
}
//Plays the correct vision based on the value of K_FUTURE_PLANET with a take-off
void ST_PlayVisionStunt02()
{
    StartNewModule("stunt_00","", ST_GetTakeOffRender(), "08");
}
//Plays the starforge approach
void ST_PlayStarForgeApproach()
{
    StartNewModule("stunt_34", "", "33");
}
//Plays the Damage Ebon Hawk Stunt scene
void ST_PlayStunt35()
{
    StartNewModule("stunt_35", "", "07_2");
}
//Shows the crash landing on the Unknown World
void ST_PlayUnknownWorldLanding()
{
    SetGlobalNumber("K_CURRENT_PLANET", 45);
    StartNewModule("ebo_m41aa","", "05_8A");
}
//Shows the take-off from the Unknown World
void ST_PlayUnknownWorldTakeOff()
{
    /*
        STUNT_44    05_8C   5_9 = DARK SIDE   1
        STUNT_42    05_8C   5_9 = LIGHT SIDE  2
    */
    int nChoice = GetGlobalNumber("G_FINALCHOICE");
    if(nChoice == 1)
    {
        StartNewModule("stunt_44", "", "05_8C", "5_9");
    }
    else if(nChoice == 2)
    {
        StartNewModule("stunt_42", "", "05_8C", "5_9");
    }
    if(nChoice == 1 || nChoice == 2)
    {
        SetGlobalNumber("K_KOTOR_MASTER", 60);
    }
}
//Landing on the Star Forge
void ST_PlayStarForgeLanding()
{
    StartNewModule("ebo_m12aa", "", "43");
    SetGlobalNumber("K_CURRENT_PLANET", 50);
}

//Goes to the Leviathan Mini-Game covered by the Escape Render
void ST_PlayLeviathanEscape01()
{
    SetGlobalNumber("K_TURRET_SKYBOX", 10);
    StartNewModule("m12ab", "", "17a", "11a");
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////// GENERIC RENDER HANDLER ////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//::///////////////////////////////////////////////
//:: Play Post Turret Sequence
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
   This determines what to play after a Fighter
   Mini Game is run
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////
void ST_PlayPostTurret()
{
    ST_MyPrintString(" Start: ST_PlayPostTurret()");
    SetGlobalNumber("K_TURRET_SKYBOX", -1);
    int nStarMap = GetGlobalNumber("K_STAR_MAP");
    int nKOTOR = GetGlobalNumber("K_KOTOR_MASTER");
    int nSimu = GetGlobalBoolean("K_HK47_SIMULATION");
    int nRandom = GetGlobalBoolean("K_RANDOM_MINI_GAME");
    ST_MyPostString("Firing Play Post Turret " + IntToString(nSimu));

    if(nSimu == TRUE)
    {
        SetGlobalBoolean("K_HK47_SIMULATION", FALSE);
        StartNewModule("ebo_m12aa", "K_MINI_GAME");
    }
    else if(nRandom == TRUE)
    {
        SetGlobalBoolean("K_RANDOM_MINI_GAME", FALSE);
        StartNewModule("ebo_m12aa", "", "11b", ST_GetLandingRender());
        SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
    }
    else if(nStarMap == 0 && nKOTOR == 10) //Blasting Off Taris for Dantooine
    {
        //MODIFIED by Preston Watamaniuk, March 6, 2003
        //Add this variable so I could get the space skybox to show up on the Taris To Dantooine Run
        SetGlobalBoolean("K_SPACE_SKYBOX_ON", TRUE);
        StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED","11b");
    }
    else if(nStarMap == 40 && nKOTOR == 20) //Blasting Off the Leviathan
    {
        StartNewModule("ebo_m40ad", "","11b");
    }
    else if(nStarMap == 50 && nKOTOR == 40) //Landing on the Unknown World
    {
        ST_PlayStunt35();
    }
}

//::///////////////////////////////////////////////
//:: Play STUNT_14 Cutscene
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This determines what planet the PC is taking
    off of and plays the STUNT_14 in the
    appropriate manner
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////
void ST_PlayStunt14()
{
    ST_MyPrintString(" Start: ST_PlayStunt14()");

    StartNewModule("stunt_14","",  ST_GetTakeOffRender());
}

//::///////////////////////////////////////////////
//:: Play Landing Sequence
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Plays the appropriate landing sequence for the
    chosen planet unless Lev or Star Forge
    Sets K_CURRENT_PLANET as well.   Note that
    this is played after a stunt module between
    planets.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////
void ST_PlayGenericLanding()
{
    ST_MyPrintString(" Start: ST_PlayGenericLanding()");

    if(ST_VisionPlayed() == TRUE)
    {
        SetGlobalNumber("K_FUTURE_PLANET", GetGlobalNumber("K_CURRENT_PLANET"));
        StartNewModule("ebo_m12aa","",  ST_GetLandingRender());
        //StartNewModule("ebo_m12aa");
    }
    else
    {
        ST_PlayVisionStunt();//StartNewModule("stunt_00","", "07_1");
    }
}

//::///////////////////////////////////////////////
//:: Play Planet to Planet
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    With no cutscene between planets the game can
    go to a vision or straight to another planet.
    If interrupted by a vision then this will be
    finished by a call in ST_PlayVisionLanding
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////

void ST_PlayPlanetToPlanet()
{
    //ST_MyPrintString(" Start: ST_PlayPlanetToPlanet()");
    int nRoll = d100();
    if(ST_VisionPlayed() == TRUE)
    {
        //MODIFIED by Preston Watamaniuk, March 6, 2003
        //I have put a 50% chance of being ambushed by Sith Fighters when doing a straight planet to planet transition.
        if(nRoll > 50)
        {
            //ST_MyPrintString(" Start: Random Mini-Game Attack");
            //Set this so that the function ST_PlayPostTurret will know what to do.
            //SetGlobalBoolean("K_RANDOM_MINI_GAME", TRUE);//
            //StartNewModule("m12ab", "", ST_GetTakeOffRender(), "11a");
            StartNewModule("ebo_m12aa", "", ST_GetTakeOffRender(), "11a");
        }
        else
        {
            StartNewModule("ebo_m12aa","",  ST_GetTakeOffRender(), "08", ST_GetLandingRender());
            //SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
            SetGlobalNumber("K_FUTURE_PLANET", GetGlobalNumber("K_CURRENT_PLANET"));
        }
    }
    else
    {
        ST_PlayVisionStunt02();
    }
}

//::///////////////////////////////////////////////
//:: Play Vision Stunt and Landing
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    If the landing is broken by a STUNT_00 then
    the landing will be finished with this function.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////

void ST_PlayVisionLanding()
{
    ST_MyPrintString(" Start: ST_PlayVisionLanding()");
    int nFUTURE = GetGlobalNumber("K_FUTURE_PLANET");
    if(nFUTURE == 20 ||
       nFUTURE == 25 ||
       nFUTURE == 30 ||
       nFUTURE == 35)
    {
        StartNewModule("ebo_m12aa","", ST_GetStarmapVisionRender(), ST_GetLandingRender());
        SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
    }
}

//::///////////////////////////////////////////////
//:: Play Post ebo_m40ad
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Allows the Ebon Hawk to continue to the
    selected planet after the Leviathan unless
    that planet is Dantooine.
    0    Endar Spire     5
    1    Taris           10
    2    Dantooine       15
    3    --Kashyyk       20
    4    --Manaan        25
    5    --Korriban      30
    6    --Tatooine      35
    7    Leviathan       40
    8    Unknown World   45
    9    Star Forge      50
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: March 21, 2003
//:://////////////////////////////////////////////
void ST_PlayPostEbo_m40ad()
{
    ST_MyPrintString(" Start: ST_PlayGenericLanding()");
    int nFPlanet = GetGlobalNumber("K_FUTURE_PLANET");

    if(nFPlanet == 15)
    {
        if(GetGlobalBoolean("K_STAR_MAP_KASHYYYK") == FALSE)
        {
            nFPlanet = 20;
        }
        else if(GetGlobalBoolean("K_STAR_MAP_MANAAN") == FALSE)
        {
            nFPlanet = 25;
        }
        else if(GetGlobalBoolean("K_STAR_MAP_KORRIBAN") == FALSE)
        {
            nFPlanet = 30;
        }
        else if(GetGlobalBoolean("K_STAR_MAP_TATOOINE") == FALSE)
        {
            nFPlanet = 35;
        }
    }
    SetGlobalNumber("K_FUTURE_PLANET", nFPlanet);
    if(ST_VisionPlayed() == TRUE)
    {
        StartNewModule("ebo_m12aa","",  ST_GetLandingRender());
        SetGlobalNumber("K_CURRENT_PLANET", nFPlanet);
    }
    else
    {
        ST_PlayVisionStunt();
    }
}

//::///////////////////////////////////////////////
//:: Get Take-Off Render
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns the appropriate take off render based
    on the K_CURRENT_PLANET variable
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////

string ST_GetTakeOffRender()
{
    int nCURRENT = GetGlobalNumber("K_CURRENT_PLANET");
    if(nCURRENT == 15)
    {
        return "05_2c";
    }
    else if(nCURRENT == 20)
    {
        return "05_4c";
    }
    else if(nCURRENT == 25)
    {
        return "05_5c";
    }
    else if(nCURRENT == 30)
    {
        return "05_7C";
    }
    else if(nCURRENT == 35)
    {
        return "05_3c";
    }
    else if(nCURRENT == 40)
    {
        return  "NULL";
    }
    else if(nCURRENT == 45)
    {
        return "05_8c";
    }
    else if(nCURRENT == 55)
    {
        return "LIVE_1c";
    }
    else if(nCURRENT == 60)
    {
        return "LIVE_2c";
    }
    else if(nCURRENT == 65)
    {
        return "LIVE_3c";
    }
    else if(nCURRENT == 70)
    {
        return "LIVE_4c";
    }
    else if(nCURRENT == 75)
    {
        return "LIVE_5c";
    }
    else if(nCURRENT == 80)
    {
        return "LIVE_6c";
    }
    return "NULL";
}

//::///////////////////////////////////////////////
//:: Get Landing Render
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Returns the appropriate landing render based
    on the K_FUTURE_PLANET variable
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////
string ST_GetLandingRender()
{
    int nFUTURE = GetGlobalNumber("K_FUTURE_PLANET");
    if(nFUTURE == 15)
    {
        return "05_2a";
    }
    else if(nFUTURE == 20)
    {
        return "05_4a";
    }
    else if(nFUTURE == 25)
    {
        return "05_5a";
    }
    else if(nFUTURE == 30)
    {
        return "05_7a";
    }
    else if(nFUTURE == 35)
    {
        return "05_3a";
    }
    else if(nFUTURE == 40)
    {
        return  "NULL";
    }
    else if(nFUTURE == 55)
    {
        return "LIVE_1a";
    }
    else if(nFUTURE == 60)
    {
        return "LIVE_2a";
    }
    else if(nFUTURE == 65)
    {
        return "LIVE_3a";
    }
    else if(nFUTURE == 70)
    {
        return "LIVE_4a";
    }
    else if(nFUTURE == 75)
    {
        return "LIVE_5a";
    }
    else if(nFUTURE == 80)
    {
        return "LIVE_6a";
    }
    return  "NULL";
}

//::///////////////////////////////////////////////
//:: Has Vision Played
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Checks if the planet designated as
    K_FUTURE_PLANET has had a vision played for it
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watmanaiuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////
int ST_VisionPlayed()
{
    int nVision = GetGlobalNumber("Ebon_Vision");
    int nFUTURE = GetGlobalNumber("K_FUTURE_PLANET");

    //ST_MyPrintString(" Start: ST_VisionPlayed()");
    //ST_MyPrintString(" nFuture = " + IntToString(nFUTURE));
    //ST_MyPrintString("k_vis_kashyyyk2  = " + IntToString(GetGlobalBoolean("k_vis_kashyyyk2")));
    //ST_MyPrintString("k_vis_manaan2  = " + IntToString(GetGlobalBoolean("k_vis_manaan2")));
    //ST_MyPrintString("k_vis_korriban2  = " + IntToString(GetGlobalBoolean("k_vis_korriban2")));
    //ST_MyPrintString("k_vis_tatooine2  = " + IntToString(GetGlobalBoolean("k_vis_tatooine2")));

    if(nFUTURE == 20 && GetGlobalBoolean("k_vis_kashyyyk2") == FALSE)
    {
        SetGlobalBoolean("k_vis_kashyyyk2", TRUE);
        return FALSE;
    }
    else if(nFUTURE == 25 && GetGlobalBoolean("k_vis_manaan2") == FALSE)
    {
        SetGlobalBoolean("k_vis_manaan2", TRUE);
        return FALSE;
    }
    else if(nFUTURE == 30 && GetGlobalBoolean("k_vis_korriban2") == FALSE)
    {
        SetGlobalBoolean("k_vis_korriban2", TRUE);
        return FALSE;
    }
    else if(nFUTURE == 35 && GetGlobalBoolean("k_vis_tatooine2") == FALSE)
    {
        SetGlobalBoolean("k_vis_tatooine2", TRUE);
        return FALSE;
    }
	else
	{
    //ST_MyPrintString("Returning True");
    return TRUE;
	}
}

//::///////////////////////////////////////////////
//:: Fetch Starmap Render
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Fetches the correct Starmap Vision Render
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Dec 14, 2002
//:://////////////////////////////////////////////

string ST_GetStarmapVisionRender()
{
    int nFUTURE = GetGlobalNumber("K_FUTURE_PLANET");

    if(nFUTURE == 20)
    {
        return "0C";
    }
    else if(nFUTURE == 25)
    {
        return "0B";
    }
    else if(nFUTURE == 30)
    {
        return "0D";
    }
    else if(nFUTURE == 35)
    {
        return "0A";
    }
    return "NULL";
}

//::///////////////////////////////////////////////
//:: Set Ebon Hawk Skybox
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This gets the current planet that the character
    is on and determines what skybox to set for
    the Ebon Hawk.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: March 6, 2003
//:://////////////////////////////////////////////
void ST_SetEbonHawkSkyBox()
{
    int nFUTURE = GetGlobalNumber("K_CURRENT_PLANET");

    if(GetGlobalBoolean("K_SPACE_SKYBOX_ON") == TRUE)
    {
        ST_MyPrintString("Firing Anim 09 for Space");
        ST_MyPrintString("New Print Line Confirmation");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP09);
        SetGlobalBoolean("K_SPACE_SKYBOX_ON", FALSE);
    }
    else if(nFUTURE == 15)
    {
        ST_MyPrintString("Firing Anim 02 for Dantooine");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP02);
    }
    else if(nFUTURE == 20)
    {
        ST_MyPrintString("Firing Anim 01 for Kashyyyk");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP01);
    }
    else if(nFUTURE == 25)
    {
        ST_MyPrintString("Firing Anim 06 for Manaan");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP06);
    }
    else if(nFUTURE == 30)
    {
        ST_MyPrintString("Firing Anim 05 for Korriban");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP05);
    }
    else if(nFUTURE == 35)
    {
        ST_MyPrintString("Firing Anim 04 for Tatooine");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP04);
    }
    else if(nFUTURE == 40)
    {
        ST_MyPrintString("Firing Anim 08 for Leviathan");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP08);
    }
    else if(nFUTURE == 45)
    {
        ST_MyPrintString("Firing Anim 07 for Unknown World");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP07);
    }
    else if(nFUTURE == 50)
    {
        ST_MyPrintString("Firing Anim 03 for Star Forge");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP03);
    }
    //MODIFIED by Preston Watamaniuk on May 10, 2003
    //Skybox added for live planets.
    else if(nFUTURE > 50)
    {
        ST_MyPrintString("Firing Anim 10 for all live content planets");
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP10);
    }
    else
    {
        PlayRoomAnimation("m12aa_01q", ANIMATION_ROOM_SCRIPTLOOP09);
    }
}

void ST_MyPrintString(string sString)
{
    PrintString("RENDER/STUNT Debug ****************** " + sString);
}

void ST_MyPostString(string sString)
{
    AurPostString("RENDER/STUNT Debug ****************** " + sString, 10, 10, 4.0);
}

//::///////////////////////////////////////////////
//:: Fetch Starmap Render
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Fetches the correct Starmap Vision Render
    for the planet the player is currently on
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: March 13, 2003
//:://////////////////////////////////////////////

string ST_GetCurrentStarmapVisionRender()
{
    int nFUTURE = GetGlobalNumber("K_CURRENT_PLANET");

    if(nFUTURE == 20)
    {
        return "0C";
    }
    else if(nFUTURE == 25)
    {
        return "0B";
    }
    else if(nFUTURE == 30)
    {
        return "0D";
    }
    else if(nFUTURE == 35)
    {
        return "0A";
    }
    return "NULL";
}

