//:: Name
/*
     Desc
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_utility"

int SHIP_TAKEOFF_CUTSCENE = 1;
int SHIP_LANDING_CUTSCENE = 2;
int NONE = 0;
int QUEEDLE = 1;
int CASSANDRA = 2;
int JAX = 3;
int QUEEDLE_CHAMP = 4;

int QUEEDLE_TIME = 3012;
int CASSANDRA_TIME = 2702;
int JAX_TIME = 2548;
int CHAMP_TIME = 2348;

int PLOT_HARVEST_STOPPED = 3;
int PLOT_KOLTO_DESTROYED = 4;

//effect EFFECT_STEAM = EffectDamage(15);
int STEAM_DAMAGE_AMOUNT = 25;
string RACE_DEFAULT = GetStringByStrRef(32289);
string STEAM_PLACEABLE = "man27_visstm0";
string ROLAND_TAG = "man26_repdip";
void PlaceShip(string sTag,location lLoc);

void RemoveShip(string sTag);

void PlaceNPC(string sTag);

// switches current player models to envirosuit models.
void DonSuits();

// switches the envirosuit model back to the regular player models
void RemoveSuits();

// deactivates all turrets on the map with the corresponding tag
// if no tag is given it will default to the tag of the calling object
void DeactivateTurrets(string sTag = "");

//used to make a given condition only fire once
//***note uses SW_PLOT_BOOLEAN_10***
int HasNeverTriggered();

// Sets a global to track who the player is racing
void SetOpponent(int nOpponent);

//Returns thte current race opponent
int GetOpponent();

//Sets a cutom token in racetime format
void SetTokenRaceTime(int nToken, int nRacerTime);

//returns the main plot global for Manaan
int GetManaanMainPlotVariable();

// returns true if poison has been released if the Hrakert rift
int KoltoDestroyed();

// Removes instances and deactives Selkath encounters
void ClearSelkathFromThisLevel();

// Opens the water door based on the tag og the button
void OpenAssociatedDoor();

// Closes the water door based on the tag og the button
void CloseAssociatedDoor();

// returns the state of a water room TRUE == full
int GetRoomFull(string sRoom);

// sets the water room to nValue
void SetRoomFull(string sRoom, int nValue);

// CLoses all water doors
void CloseAllWaterDoors();

//checks if there is water on either side of the door, if not the door opens
void OpenWaterDoor(string sRoom1,string sRoom2 = "");

//switches water filled rooms accross the corridor
void SwitchWaterRooms();

//returns True if the steam vent is active
int GetIsVentActive(object oVent = OBJECT_SELF);

//sets the state of the Vent and playes the appropriate animation
void SetVentActive(int bState,object oVent = OBJECT_SELF);

// Gives the correct readout for the various water displays
void ActivateWaterDisplays(string sRoom,int nValue);

//plays the required looping animation for the injecter display
void PlayInjecterAnimation(int nLevel);

//plays the required looping animation for the container display
void PlayContainerAnimation(int nLevel);

//initates the sitting animations for the sitting placeables
void InitiateSitters();

// returns true if the staramp was found on Manaan
int GetManaanStarMapFound();

//Turns off AI on party members (if any) for curscene purposes
void TurnOffPartyAI();

//Turns on AI on party members (if any)
void TurnOnPartyAI();

//roland is in post plot state uses SW_PLOT_BOOLEAN05
int GetRolandIsPostPlot();

//toggles the post plot state of Roland
void SetRolandIsPostPlot(int nValue);

//returns the plot global for the missing Selkath youth plot
//used primarily by Shealas(manm26ab) and Sasha (man27aa)
int GetMissingSelkathPlotVariable();

//Sets the plot global for the missing Selkath youth plot
//used primarily by Shealas(manm26ab) and Sasha (man27aa)
void SetMissingSelkathPlotVariable(int nValue);

// returns true if Sasha has been killed
int GetIsSashaDead();

// Sets the variable tracking wheather Sasha is alive
void SetIsSashaDead();
////////////////////////////////////////////////////////////////////////////////
void RemoveShip(string sTag)
{
    object oShip = GetObjectByTag(sTag);
    if(GetIsObjectValid(oShip))
    {
        DestroyObject(oShip);
    }
}

void PlaceShip(string sTag,location lLoc)
{
    object oShip = GetObjectByTag(sTag);
    if(GetIsObjectValid(oShip) == FALSE)
    {
        CreateObject(OBJECT_TYPE_PLACEABLE,sTag,lLoc);
    }
}

void PlaceNPC(string sTag)
{
    if(!GetIsObjectValid(GetObjectByTag(sTag)))
    {
        CreateObject(OBJECT_TYPE_CREATURE,sTag,GetLocation(GetObjectByTag("POST_" + sTag)));
    }
}
void DonSuits()
{
    object oPC;
    int nMax = GetPartyMemberCount();
    int nIdx;
    effect eChange = EffectDisguise(DISGUISE_TYPE_ENVIRONMENTSUIT);
    for(nIdx = 0;nIdx < nMax; nIdx++)
    {
        ApplyEffectToObject(DURATION_TYPE_PERMANENT,eChange,GetPartyMemberByIndex(nIdx));
    }
}

void RemoveSuits()
{
    int nDisguize = EFFECT_TYPE_DISGUISE;//replace with effect constant
    object oPC;
    effect eEffect;
    int nMax = GetPartyMemberCount();
    int nIdx;
    for(nIdx = 0;nIdx < nMax; nIdx++)
    {
        oPC = GetPartyMemberByIndex(nIdx);
        eEffect = GetFirstEffect(oPC);
        while(GetIsEffectValid(eEffect))
        {
            if(GetEffectType(eEffect) == nDisguize)
            {
                RemoveEffect(oPC,eEffect);
            }
            eEffect = GetNextEffect(oPC);
        }
    /*  if(GetTag(oPC) == "Bastila")
        {
            ApplyEffectToObject(DURATION_TYPE_PERMANENT,EffectDisguise(4),oPC);
        }
        if(GetTag(oPC) == "Carth")
        {
            ApplyEffectToObject(DURATION_TYPE_PERMANENT,EffectDisguise(6),oPC);
        }*/
    }
}

void DeactivateTurrets(string sTag = "")
{
    if(sTag == "")
    {
        sTag = GetTag(OBJECT_SELF);
    }
    int nNth = 0;
    object oTurret = GetObjectByTag(sTag,nNth);
    while(GetIsObjectValid(oTurret))
    {
        if(oTurret != OBJECT_SELF &&
           GetObjectType(oTurret) == OBJECT_TYPE_CREATURE)
        {
            ChangeToStandardFaction(oTurret,STANDARD_FACTION_NEUTRAL);
        }
        nNth++;
        oTurret = GetObjectByTag(sTag,nNth);
    }
}

//This global indicates that Hukta threatened player
int GetHuktaThreatenedPlayerGlobal()
{
    return GetGlobalBoolean("man_HuktaThreatened");
}

void SetHuktaThreatenedPlayerGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("man_HuktaThreatened", bValue);
    }
    return;
}

//This global indicates that the player lost his last race
int GetPlayerLostLastRaceGlobal()
{
    return GetGlobalBoolean("man_PlayerLostLast");
}

void SetPlayerLostLastRaceGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("man_PlayerLostLast", bValue);
    }
    return;
}

//This global measures the state of the swoop races on Manaan
int GetManaanRaceStateGlobal()
{
    return GetGlobalNumber("man_ManaanRaceState");
}

void SetManaanRaceStateGlobal(int bValue)
{
    SetGlobalNumber("man_ManaanRaceState", bValue);

    return;
}

//This global measures the state of Queedle during the swoop races on Manaan
int GetQueedleStateGlobal()
{
    return GetGlobalNumber("tat_QueedleState");
}

void SetQueedleStateGlobal(int bValue)
{
    SetGlobalNumber("tat_QueedleState", bValue);

    return;
}

//This global indicates that player gave money to Queedle
int GetQueedleUpgradeGlobal()
{
    return GetGlobalBoolean("man_QueedleUpgrade");
}

void SetQueedleUpgradeGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("man_QueedleUpgrade", bValue);
    }
    return;
}

//This global indicates that player has angered Hukta by winning against him
int GetHuktaMadGlobal()
{
    return GetGlobalBoolean("man_HuktaMad");
}

void SetHuktaMadGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("man_HuktaMad", bValue);
    }
    return;
}

int GetPlayerNotPaidLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Race Coordinator in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetPlayerNotPaidLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Race Coordinator in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetObjectByTag("man26_swpreg"), SW_PLOT_BOOLEAN_01, bValue);
    }
}

int GetPlayerPersuadedOnceLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Race Coordinator in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetPlayerPersuadedOnceLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Race Coordinator in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }
}

int GetCasandraMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Casandra in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetCasandraMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Casandra in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }
}

int GetToldCasandraNameLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Casandra in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetToldCasandraNameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Casandra in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }
}


int GetToldHuktaNameLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Hukta in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetToldHuktaNameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Hukta in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }
}

int GetQueedleMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Queedle in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetQueedleMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Queedle in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }
}

int GetToldQueedleNameLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Queedle in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetToldQueedleNameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Queedle in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }
}

int GetQueedleLeavingLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Queedle in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetQueedleLeavingLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Queedle in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }
}

int GetQueedleToldAboutMoneyLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for Queedle in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetQueedleToldAboutMoneyLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for Queedle in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }
}

int GetQueedleGaveMoneyBackLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for Queedle in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05);
}

void SetQueedleGaveMoneyBackLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for Queedle in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, bValue);
    }
}

int GetSwoopStoreInitialLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Yortal in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetSwoopStoreInitialLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Yortal in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }
}

int GetSwoopSithMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for swoop sith in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetSwoopSithMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for swoop sith in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }
}

int GetSecondSwoopSithMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for second swoop sith in the area man_26ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetSecondSwoopSithMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for second swoop sith in the area man_26ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }
}

int HasNeverTriggered()
{
    int bReturn;
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_10) == FALSE)
    {
        bReturn = TRUE;
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_10,TRUE);
    }
    return bReturn;
}


void SetOpponent(int nOpponent)
{
    SetGlobalNumber("MAN_SWOOP_OPP",nOpponent);
}

int GetOpponent()
{
    return GetGlobalNumber("MAN_SWOOP_OPP");
}

void SetTokenRaceTime(int nToken, int nRacerTime)
{
    // calculate the time components
    int nMinutes = nRacerTime/6000;
    int nSeconds = (nRacerTime - (nMinutes * 6000)) / 100;
    int nFractions =  nRacerTime - ((nMinutes * 6000) + (nSeconds * 100));

    //building the time string
    string sTime = IntToString(nMinutes) + ":";
    if (nSeconds < 10)
    {
        sTime = sTime + "0";
    }
    sTime = sTime + IntToString(nSeconds) + ":";
    if(nFractions < 10)
    {
        sTime = sTime + "0";
    }
    sTime = sTime + IntToString(nFractions);
    SetCustomToken(nToken,sTime);

}


void DestroyFish(object oArea)
{
    object oFish = GetFirstObjectInArea(oArea,OBJECT_TYPE_PLACEABLE);
    while (GetIsObjectValid(oFish))
    {
        string sTag = GetTag(oFish);
        string sPlaceable = GetStringLeft(sTag,10);
        if (sPlaceable == "FirixaFish")
        {
            DestroyObject(oFish);
        }
        oFish = GetNextObjectInArea(oArea,OBJECT_TYPE_PLACEABLE);
    }
  /*  object oCreature = GetFirstObjectInArea(oArea);
    while (GetIsObjectValid(oCreature))
    {
        if(GetRacialType(oCreature) == RACIAL_TYPE_HUMAN)
        {
            DestroyObject(oCreature);
        }
        oCreature =GetNextObjectInArea(oArea);
    }
    object oEnc = GetFirstObjectInArea(oArea,OBJECT_TYPE_ENCOUNTER);
    while (GetIsObjectValid(oEnc))
    {
        SetEncounterActive(FALSE,oEnc);
        oEnc = GetNextObjectInArea(oArea,OBJECT_TYPE_ENCOUNTER);
    } */
}

int GetManaanMainPlotVariable()
{
    return GetGlobalNumber("MAN_PLANET_PLOT");
}

int KoltoDestroyed()
{
    return GetGlobalNumber("MAN_PLANET_PLOT") == PLOT_KOLTO_DESTROYED;
}

void ClearSelkathFromThisLevel()
{
    string sTag = "man28_inssel";
    int nLength = GetStringLength(sTag);
    object oSelkath = GetFirstObjectInArea(OBJECT_SELF,OBJECT_TYPE_ALL);
    while(GetIsObjectValid(oSelkath))
    {
        if(GetObjectType(oSelkath) == OBJECT_TYPE_CREATURE)
        {
            if(GetStringLeft(GetTag(oSelkath),nLength) == sTag)
            {
                DelayCommand(0.1,DestroyObject(oSelkath,0.0,TRUE));
            }

        }
        if(GetObjectType(oSelkath) == OBJECT_TYPE_ENCOUNTER)
        {
            if(GetEncounterActive(oSelkath))
            {
                SetEncounterActive(FALSE,oSelkath);
            }
        }
        oSelkath = GetNextObjectInArea(OBJECT_SELF,OBJECT_TYPE_ALL);
    }
}

void OpenAssociatedDoor()
{
    string sNum = GetStringRight(GetTag(OBJECT_SELF),1);
    object oDoor = GetObjectByTag("man27_h2o0" + sNum);
    AssignCommand(oDoor,ActionOpenDoor(oDoor));
}

void CloseAssociatedDoor()
{
    string sNum = GetStringRight(GetTag(OBJECT_SELF),1);
    object oDoor = GetObjectByTag("man27_h2o0" + sNum);
    AssignCommand(oDoor,ActionCloseDoor(oDoor));
}

int GetRoomFull(string sRoom)
{

    int bFilled = FALSE;
    if(sRoom != "")
    {
        bFilled = GetGlobalBoolean("MAN_WATER_" + sRoom);
    }
    return bFilled;
}

void SetRoomFull(string sRoom, int nValue)
{
    if (GetRoomFull(sRoom) != nValue)
    {
        SetGlobalBoolean("MAN_WATER_" + sRoom,nValue);
        ActivateWaterDisplays(sRoom,nValue);
    }
}

void CloseAllWaterDoors()
{
    object oDoor = GetFirstObjectInArea(GetArea(OBJECT_SELF),OBJECT_TYPE_DOOR);
    while(GetIsObjectValid(oDoor))
    {
        if(GetStringLeft(GetTag(oDoor),9) == "man27_h2o")
        {
            AssignCommand(oDoor,ActionCloseDoor(oDoor));
        }
        oDoor = GetNextObjectInArea(GetArea(OBJECT_SELF),OBJECT_TYPE_DOOR);
    }
}

void OpenWaterDoor(string sRoom1,string sRoom2 = "")
{
    if(!GetRoomFull(sRoom1) && !GetRoomFull(sRoom2))
    {
        ActionOpenDoor(OBJECT_SELF);
    }
    else
    {
        BarkString(GetPartyMemberByIndex(0),32128);
    }
}

void SwitchWaterRooms()
{
        if (GetRoomFull("A"))
    {
        SetRoomFull("A",FALSE);
        SetRoomFull("B",TRUE);
    }
    else if(GetRoomFull("B"))
    {
        SetRoomFull("A",TRUE);
        SetRoomFull("B",FALSE);
    }
    if (GetRoomFull("C"))
    {
        SetRoomFull("C",FALSE);
        SetRoomFull("D",TRUE);
    }
    else if(GetRoomFull("D"))
    {
        SetRoomFull("C",TRUE);
        SetRoomFull("D",FALSE);
    }
    if (GetRoomFull("E"))
    {
        SetRoomFull("E",FALSE);
        SetRoomFull("F",TRUE);
    }
    else if(GetRoomFull("F"))
    {
        SetRoomFull("E",TRUE);
        SetRoomFull("F",FALSE);
    }
}

int GetIsVentActive(object oVent = OBJECT_SELF)
{
    return UT_GetPlotBooleanFlag(oVent,SW_PLOT_BOOLEAN_04);
}

void SetVentActive(int bState,object oVent = OBJECT_SELF)
{
    int nNth = 0;
    object oSteam = GetObjectByTag(STEAM_PLACEABLE + GetStringRight(GetTag(oVent),1),nNth );
    while(GetIsObjectValid(oSteam))
    {
        if(bState)
        {
            //AurPostString(GetTag(oVent) + " on",5,5 + StringToInt(GetStringRight(GetTag(oVent),1)),5.0f);
            AssignCommand(oSteam,PlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
        }
        else
        {
            AssignCommand(oSteam,PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
        }
        nNth++;
        oSteam = GetObjectByTag(STEAM_PLACEABLE + GetStringRight(GetTag(oVent),1),nNth );
    }
    UT_SetPlotBooleanFlag(oVent,SW_PLOT_BOOLEAN_04,bState);

}

void ActivateWaterDisplays(string sRoom,int nValue)
{
    int nNth = 0;
    object oDisplay = GetObjectByTag("man27_waterlvl" + sRoom,nNth);
    while (GetIsObjectValid(oDisplay))
    {
        if(nValue)
        {
            AssignCommand(oDisplay,ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
        }
        else
        {
            AssignCommand(oDisplay,ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
        }
        nNth++;
        oDisplay = GetObjectByTag("man27_waterlvl" + sRoom,nNth);
    }
}

void PlayInjecterAnimation(int nLevel)
{
    int nAnim;
    object oInjector = GetObjectByTag("man28_inject");
    if(nLevel == 0)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP04;
    }
    else if(nLevel == 1)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP03;
    }
    else if(nLevel == 2)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP02;
    }
    else if(nLevel >= 3)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP01;
    }
    AssignCommand(oInjector, ActionPlayAnimation(nAnim));
}

void PlayContainerAnimation(int nLevel)
{
    int nAnim;
    object oInjector = GetObjectByTag("man28_contain");
    if(nLevel == 0)
    {
       //AurPostString("level 0",5,5,5.0);
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP06;
    }
    else if(nLevel == 1)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP05;
    }
    else if(nLevel == 2)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP04;
    }
    else if(nLevel == 3)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP03;
    }
    else if(nLevel == 4)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP02;
    }
    else if(nLevel >= 3)
    {
        nAnim = ANIMATION_PLACEABLE_ANIMLOOP01;
    }
    AssignCommand(oInjector, ActionPlayAnimation(nAnim));
}

void InitiateSitters()
{
    int nNth = 0;
    object oPlaceable = GetObjectByTag("man_drinking",nNth);
    while (GetIsObjectValid(oPlaceable))
    {
        AssignCommand(oPlaceable,ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP02));
        nNth++;
        oPlaceable = GetObjectByTag("man_drinking",nNth);
    }
    nNth = 0;
    oPlaceable = GetObjectByTag("man_cards",nNth);
    while (GetIsObjectValid(oPlaceable))
    {
        AssignCommand(oPlaceable,ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP03));
        nNth++;
        oPlaceable = GetObjectByTag("man_cards",nNth);
    }
    nNth = 0;
    oPlaceable = GetObjectByTag("man_sitting",nNth);
    while (GetIsObjectValid(oPlaceable))
    {
        AssignCommand(oPlaceable,ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP01));
        nNth++;
        oPlaceable = GetObjectByTag("man_sitting",nNth);
    }
}

int GetManaanStarMapFound()
{
    return GetGlobalBoolean("MAN_STARMAP_FOUND");
}

void TurnOffPartyAI()
{
    int nIdx;
    object oNPC;
    for(nIdx = 0; nIdx <= 2; nIdx++)
    {
       oNPC = GetPartyMemberByIndex(nIdx);
       if(GetIsObjectValid(oNPC) &&
          GetFirstPC() != oNPC)
       {
            ExecuteScript("k_pman_aioff",oNPC);

       }
    }
}

void TurnOnPartyAI()
{
    int nIdx;
    object oNPC;
    for(nIdx = 0; nIdx <= 2; nIdx++)
    {
       oNPC = GetPartyMemberByIndex(nIdx);
       if(GetIsObjectValid(oNPC) &&
          GetFirstPC() != oNPC)
       {
            ExecuteScript("k_pman_aion",oNPC);

       }
    }
}

int GetRolandIsPostPlot()
{
    object oRoland = GetObjectByTag(ROLAND_TAG);
    int nReturn;
    if(GetIsObjectValid(oRoland))
    {
        nReturn = UT_GetPlotBooleanFlag(oRoland,SW_PLOT_BOOLEAN_05);
    }
    else
    {
        nReturn = FALSE;
    }
    return nReturn;
}

void SetRolandIsPostPlot(int nValue)
{
    object oRoland = GetObjectByTag(ROLAND_TAG);
    if(GetIsObjectValid(oRoland))
    {
        UT_SetPlotBooleanFlag(oRoland,SW_PLOT_BOOLEAN_05,nValue);
    }
}

int GetMissingSelkathPlotVariable()
{
    return GetGlobalNumber("MAN_MISSING_PLOT");
}

void SetMissingSelkathPlotVariable(int nValue)
{
    SetGlobalNumber("MAN_MISSING_PLOT",nValue);
}

int GetIsSashaDead()
{
    return GetGlobalBoolean("MAN_KILLS_DONE");
}

void SetIsSashaDead()
{
    SetGlobalBoolean("MAN_KILLS_DONE",TRUE);
}
