//:: k_sup_gohawk
/*
    Returns the PC to
    the Ebon Hawk Swoop Bay or
    to the Taris Apartment

    VARIABLE = K_CURRENT_PLANET
        Endar Spire     5
        Taris           10
        Dantooine       15
        --Kashyyk       20
        --Manaan        25
        --Korriban      30
        --Tatooine      35
        Leviathan       40
        Unknown World   45
        Star Forge      50

        GUI String for Button
        32179 = Return to Ebon Hawk
        32227 = Return to Last Location
        32228 = Return to Apartment
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
//#include "k_inc_tat"

object CUSTOM_GetSpacePortWay(int nCurrent_Planet);
void HealParty();
void CleanUpWays();

void main()
{
    Db_MyPrintString("Starting Transit System Script");
    int nFirst = GetGlobalBoolean("TAR_FIRST_SWOOP_USE");
    if(nFirst == FALSE)
    {
        SetGlobalBoolean("TAR_FIRST_SWOOP_USE", TRUE);
        AddJournalQuestEntry("k_rapidtransit",99);
    }

    Db_PostString("FIRING RETURN SPACEPORT", 10,10,4.0);

    string sPlanet;
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    int nXor = GetGlobalBoolean("K_MESS_JUHANI");
    //This object is check for a valid return.  If the return is true then the
    //script is aborted and nothing happens.
    object oEbonHawk = GetWaypointByTag("K_EBON_HAWK_LOCATION");
    object oTarisApt = GetWaypointByTag("K_TARIS_APARTMENT");
    object oSpacePort = CUSTOM_GetSpacePortWay(nPlanet);

    Db_MyPrintString("Go Hawk Start");
    //Do not jump to anywhere if you are on the Ebon Hawk, in the apartment or already in the spaceport/apartment building
    if(!GetIsObjectValid(oEbonHawk) && !GetIsObjectValid(oSpacePort) && !GetIsObjectValid(oTarisApt))
    {
        Db_MyPrintString("Starting Return to Port Section");
        //This allows the players to be ambushed in the starport outside the Ebon Hawk
        if(nXor == 1)
        {
            Db_MyPrintString("Xor 1 == 1");
            if(GetGlobalBoolean("K_XOR_AMBUSH_FIX") == FALSE)
            {
                Db_MyPrintString("Xor 2 Ambush Fix == FALSE");
                if(nPlanet == 20 || nPlanet == 25 || nPlanet == 30 || nPlanet == 35)
                {
                    Db_MyPrintString("Xor 3 Ambush Choosing Planet");
                    SetGlobalNumber("K_XOR_AMBUSH", TRUE);
                    SetGlobalBoolean("K_XOR_AMBUSH_FIX", TRUE);
                    Db_MyPrintString("Xor 4 Hijack");
                    if(nPlanet == 20)
                    {
                        sPlanet = "kas_m22aa";
                    }
                    if(nPlanet == 25)
                    {
                        sPlanet = "manm26ad";
                    }
                    if(nPlanet == 30)
                    {
                        sPlanet = "korr_m33aa";
                    }
                    if(nPlanet == 35)
                    {
                        sPlanet = "tat_m17ab";
                    }
                    StartNewModule(sPlanet, "K_XOR_AMBUSH_SPAWN");
                    return;
                }
            }
        }
        //This returns the PC to the Spaceport just outside the Ebon Hawk in the game
        //On Taris it returns the PC to the apartment.
        if(nPlanet == 10 ||
            nPlanet == 15 ||
            nPlanet == 20 ||
            nPlanet == 25 ||
            nPlanet == 30 ||
            nPlanet == 35 ||
            nPlanet == 45)
        {

            Db_MyPrintString("Returning to Port");
            CleanUpWays(); //This sweeps the current area and deletes all "g_lastlocal" waypoints before making a new one.
            HealParty();
            UT_CreateObject(OBJECT_TYPE_WAYPOINT, "g_lastlocal", GetLocation(GetFirstPC()));
            SetGlobalString("K_LAST_MODULE", GetModuleFileName());
            //SetReturnStrref(TRUE, 32227); //String Return To Last Local

            Db_MyPrintString("Planet = " + IntToString(nPlanet));

            if(nPlanet == 10)
            {
                 StartNewModule("tar_m02aa", "tar02_sw02af");
            }
            else if(nPlanet == 15)
            {
                 StartNewModule("danm13", "K_DAN_EBON_HAWK_TRANSITION");
            }
            else if(nPlanet == 20)
            {
                StartNewModule("kas_m22aa", "K_KAS_EBON_HAWK_TRANSITION");
            }
            else if(nPlanet == 25)
            {
                StartNewModule("manm26ad", "K_MAN_EBON_HAWK_TRANSITION");
            }
            else if(nPlanet == 30)
            {
                StartNewModule("korr_m33aa", "K_KOR_EBON_HAWK_TRANSITION");
            }
            else if(nPlanet == 35)
            {
                //MODIFIED by Preston Watamaniuk April 23, 2003
                //This was put in so that returning from the Dune Sea to the Ebon Hawk removed the Sand Person Disguise.
                //Db_MyPrintString("Returning to Tattooine Port");
                //RemoveSandpeopleDisguise();
                StartNewModule("tat_m17ab", "K_TAT_EBON_HAWK_TRANSITION");
            }
            else if(nPlanet == 45)
            {
                StartNewModule("unk_m41aa", "K_UNK_EBON_HAWK_TRANSITION");
            }
        }
    }
    //If you are at the spaceport/apartment building transition back to your last location
    else if(GetIsObjectValid(oSpacePort))
    {
        string sMod = GetGlobalString("K_LAST_MODULE");

        if(sMod != "NO_MODULE" && UT_ValidateJump(sMod))
        {
            if(sMod != "")
            {
                Db_MyPrintString("Jump to last location");
                StartNewModule(sMod, "K_LAST_LOCATION");
            }
        }
    }
}

object CUSTOM_GetSpacePortWay(int nCurrent_Planet)
{
    object oWay;
    if(nCurrent_Planet == 10)
    {
        return GetWaypointByTag("tar02_sw02af");
    }
    else if(nCurrent_Planet == 15)
    {
        return GetWaypointByTag("K_DAN_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 20)
    {
        return GetWaypointByTag("K_KAS_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 25)
    {
        return GetWaypointByTag("K_MAN_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 30)
    {
        return GetWaypointByTag("K_KOR_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 35)
    {
        return GetWaypointByTag("K_TAT_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 45)
    {
        return GetWaypointByTag("K_UNK_EBON_HAWK_TRANSITION");
    }
    return OBJECT_INVALID;
}

void HealParty()
{
    object oParty;
    int nCnt = 0;
    for(nCnt; nCnt < 3; nCnt++)
    {
        oParty = GetPartyMemberByIndex(nCnt);
        if(GetIsObjectValid(oParty))
        {
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(500), oParty);
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints(500), oParty);
        }
    }
}

void CleanUpWays()
{
    int nCnt = 1;
    object oWay = GetNearestObjectByTag("K_LAST_LOCATION", GetFirstPC(), nCnt);
    while(GetIsObjectValid(oWay))
    {
        Db_MyPrintString("LOOPING " + GetTag(oWay));
        DestroyObject(oWay);
        nCnt++;
        oWay = GetNearestObjectByTag("K_LAST_LOCATION", GetFirstPC(), nCnt);
    }
}


