#include "k_inc_generic"
#include "k_inc_utility"
int ROMANCE_DONE = 4;
int JUHANI_RESCUED = 1;
int JEDI_TRAINING_DONE = 7;

int JEDI_PATH_GUARDIAN = 1;
int JEDI_PATH_SENTINEL = 2;
int JEDI_PATH_CONSULAR = 3;


int DROID_STARTED = 1;
int DROID_DESTROYED = 2;
int DROID_DECEIVED = 3;
int DROID_RETURNED = 4;
int DROID_HELPED = 5;
int DROID_FINISHED = 6;
string sBastilaTag = "bastila";
string sCarthTag = "carth";
string sCouncilTag = "dan13_WP_council";

string SABER_BLUE = "g_w_lghtsbr01";
string SABER_GREEN = "g_w_lghtsbr03";
string SABER_GOLD = "g_w_lghtsbr04";
string WANDERING_HOUND_TAG = "dan_wanderhound";
//places an instance of a character based on the tag/template
// **TAG MUST BE THE SAME AS TEMPLATE**
void PlaceNPC(string sTag, string sLocation = "");

//Get Carth's Object
object GetCarth();

//Gets Bastila's object
object GetBastila();

//gets the center of the council chamber
vector GetChamberCenter();

// creature move along a waypoint path. Not interuptable.
void PlotMove(string sWayPointTag,int nFirst, int nLast, int nRun = FALSE);

// creature move along a waypoint path. Not interuptable. Destroys self at the end
void PlotLeave(string sWayPointTag,int nFirst, int nLast, int nRun = FALSE);

// returns true is a trigger has not been fired yet
// intended for one shot triggers
int HasNeverTriggered();

//returns true if, on Korriban, the player has convinced Yuthura to come to Dantooine.
int YuthuraHasDefected();

//Sets the progression of the Elise plot on Dantooine
void SetElisePlot(int nValue);

// returns true if the player has started the Elise plot
int ElisePlotStarted();

// returns true if the player has agreed to help the droid after it has returned to elise
int GetDroidHelped();

// returns true if c369 has been spoken to
int GetEliseDroidMet();

//  the Elise plot has not started yet
int GetElisePlotNeverStared();

// returns true if Elise has gone to the Jedi compund
int GetEliseInCompound();

// returns true if the Elise plot is over
int GetElisePlotDone();


//returns true if Elise's droid was returned to her
int GetEliseDroidReturned();

// changes the PC to a new Jedi Class and gives them the required xperience to level Up
void TurnPlayerIntoJedi();

//checks for a color crystal in the players inventory and creates a saber of that color
object CreateFirstLightsaber();

//creates droids for the danm14ab cutscene
void StartDroid(string sLetter, int nNum);

//
void WraperShowLevelUpGUI();
//void main(){}

// returns number of the remaining wndering hounds on the level
int GetNumberOfWanderingKathHounds();

// spawns the number of Kath hounds. recursive
void SpawnWanderingKathHound(int nNumberOfHounds);

void PlaceNPC(string sTag, string sLocation = "")
{
    if(!GetIsObjectValid(GetObjectByTag(sTag)))
    {
        CreateObject(OBJECT_TYPE_CREATURE,sTag,GetLocation(GetObjectByTag("POST_" + sTag + sLocation)));
    }
}

object GetCarth()
{
    return GetObjectByTag(sCarthTag);
}

object GetBastila()
{
    return GetObjectByTag(sBastilaTag);
}

vector GetChamberCenter()
{
    return GetPosition(GetObjectByTag(sCouncilTag));
}

void PlotMove(string sWayPointTag,int nFirst, int nLast, int nRun = FALSE)
{

    int nInc = 1;
    object oWP;
    int nIdx;
    if(nFirst > nLast)
    {
        nInc = -1;
    }
    for(nIdx = nFirst - nInc; abs(nLast - nIdx) > 0 && abs(nLast - nIdx) <= abs((nLast - nFirst) + 1); nIdx = nIdx + nInc)
    {
        oWP = GetObjectByTag(sWayPointTag + IntToString(nIdx + nInc));
        if(GetIsObjectValid(oWP))
        {
            ActionForceMoveToObject(oWP,nRun,3.0f,5.0f);
        }
    }
    ActionDoCommand(SetCommandable(TRUE));
    SetCommandable(FALSE);
}

void PlotLeave(string sWayPointTag,int nFirst, int nLast, int nRun = FALSE)
{
    int nInc = 1;
    object oWP;
    int nIdx;
    object oSelf = OBJECT_SELF;
    if(nFirst > nLast)
    {
        nInc = -1;
    }
    for(nIdx = nFirst - nInc; abs(nLast - nIdx) > 0 && abs(nLast - nIdx) <= abs((nLast - nFirst) + 1); nIdx = nIdx + nInc)
    {
        oWP = GetObjectByTag(sWayPointTag + IntToString(nIdx + nInc));
        if(GetIsObjectValid(oWP))
        {
            ActionForceMoveToObject(oWP,nRun,3.0f,5.0f);
        }
    }
    ActionDoCommand(DestroyObject(OBJECT_SELF));
    SetCommandable(FALSE);
}

int HasNeverTriggered()
{
    int bReturn;
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
        bReturn = TRUE;
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
    }
    return bReturn;
}

int YuthuraHasDefected()
{
    return GetGlobalNumber("KOR_FINAL_TEST") == 7;
}

void SetElisePlot(int nValue)
{
    SetGlobalNumber("DAN_ELISE_PLOT",nValue);
}

int ElisePlotStarted()
{
    return GetGlobalNumber("DAN_ELISE_PLOT") == DROID_STARTED;
}

int GetDroidHelped()
{
    return GetGlobalNumber("DAN_ELISE_PLOT") == DROID_HELPED;
}

int GetEliseDroidMet()
{
    return GetGlobalNumber("DAN_ELISE_PLOT") > DROID_STARTED &&
           GetGlobalNumber("DAN_ELISE_PLOT") < DROID_FINISHED;
}

int GetElisePlotNeverStared()
{
    return GetGlobalNumber("DAN_ELISE_PLOT") == 0;
}

int GetEliseInCompound()
{
    return GetGlobalBoolean("DAN_ELISE_COMPOUND");
}

int GetElisePlotDone()
{
    return GetGlobalNumber("DAN_ELISE_PLOT") >= DROID_FINISHED;
}

int GetEliseDroidReturned()
{
    return GetGlobalNumber("DAN_ELISE_PLOT") == DROID_RETURNED ||
           GetGlobalNumber("DAN_ELISE_PLOT") == DROID_HELPED;
}

void TurnPlayerIntoJedi()
{
    object oPC = GetFirstPC();
/*    int nXP = GetXP(oPC);
   // AurPostString("Current XP: " + IntToString(nXP),5,5,5.0);

    int nLevel = GetHitDice(oPC);
   // AurPostString("Current Level: " + IntToString(nLevel),5,6,5.0);

    int nXPNeeded = 1000 * FloatToInt((IntToFloat(nLevel) / 2.0) * (IntToFloat(nLevel) + 1.0));
   // AurPostString("XP Needed" + IntToString(nXPNeeded),5,7,5.0);

    int nSaved = nXP - nXPNeeded;
   // AurPostString("Extra: " + IntToString(nSaved),5,8,5.0);
    if(nSaved > 0)
    {
        SetGlobalBoolean("DAN_EXTRA",TRUE);
        int nLow = nSaved & 0xff;
        AurPostString(IntToString(nLow),5,9,5.0);
        int nHigh = (nSaved >> 8) & 0xff;
        AurPostString(IntToString(nHigh),5,10,5.0);
       // if (nLow > 0)
       // {
           SetGlobalNumber("DAN_EXTRA_XP",nLow - 128);
       // }
      //  if (nHigh > 0)
        //{
            SetGlobalNumber("DAN_EXTRA_XP2",nHigh - 128);
       //}
    } */

    int nJediPath = GetGlobalNumber("DAN_PATH_STATE");
    if(nJediPath > 0)
    {
        if(nJediPath == JEDI_PATH_GUARDIAN)
        {
            AddMultiClass(CLASS_TYPE_JEDIGUARDIAN,oPC);
        }
        else if (nJediPath == JEDI_PATH_SENTINEL)
        {
            AddMultiClass(CLASS_TYPE_JEDISENTINEL,oPC);
        }
        else if (nJediPath == JEDI_PATH_CONSULAR)
        {
            AddMultiClass(CLASS_TYPE_JEDICONSULAR,oPC);
        }
      //  int nLevel = GetHitDice(oPC);
      //  int nXPNeeded = 1000 * (nLevel / 2) * (nLevel + 1);
      //  SetXP(oPC,nXPNeeded);
    }
    //ShowLevelUpGUI();
    CancelPostDialogCharacterSwitch();
    NoClicksFor(0.6);
    DelayCommand(0.5,WraperShowLevelUpGUI());
}

object CreateFirstLightsaber()
{
    object oPC = GetFirstPC();
    object oSaber;
    object oCrystal = GetItemPossessedBy(GetFirstPC(),"dan13_plotcrys");
    SetPlotFlag(oCrystal,FALSE);
    DestroyObject(oCrystal);
   /* if(GetIsObjectValid(oSaber))
    {
        AssignCommand(oPC,ActionEquipItem(oSaber,INVENTORY_SLOT_RIGHTWEAPON));
    }*/
    int nJediPath = GetGlobalNumber("DAN_PATH_STATE");
    if(nJediPath > 0)
    {
        if(nJediPath == JEDI_PATH_GUARDIAN)
        {
            oSaber = CreateItemOnObject(SABER_BLUE,oPC);
        }
        else if (nJediPath == JEDI_PATH_SENTINEL)
        {
            oSaber = CreateItemOnObject(SABER_GOLD,oPC);
        }
        else if (nJediPath == JEDI_PATH_CONSULAR)
        {
            oSaber = CreateItemOnObject(SABER_GREEN,oPC);
        }
    }
    if(GetIsObjectValid(oSaber))
    {
      // ExecuteScript("k_pdan_player03",oPC);
        DelayCommand(0.1,AssignCommand(oPC,ActionEquipItem(oSaber,INVENTORY_SLOT_RIGHTWEAPON)));
    }
    return oSaber;
}

void StartDroid(string sLetter, int nNum)
{
    string sBase = "danm14aa_WP_droid";
    string sStartTag = sBase + sLetter + "_01";
    string sEndTag = sBase + sLetter + "_0" + IntToString(nNum);
    location lStart = GetLocation(GetObjectByTag(sStartTag));
    location lEnd = GetLocation(GetObjectByTag(sEndTag));

    object oDroid = CreateObject(OBJECT_TYPE_CREATURE, "pdan_mwdroid",lStart);
    AssignCommand(oDroid,ActionWait(0.5));
    AssignCommand(oDroid,ActionMoveToLocation(lEnd));


/*    if(GetIsObjectValid(GetObjectByTag(sTag + sLetter + "_01")))
    {
        PrintString("Aidan--FoundDroidWP");
    }
    else
    {
        PrintString("Aidan--Can't Find DroidWP");
    }*/
   // object oDroid = CreateObject(OBJECT_TYPE_CREATURE, "pdan_mwdroid",GetLocation(GetObjectByTag(sTag + sLetter + "_01")));
  //  AssignCommand(oDroid,ActionMoveToObject(GetObjectByTag(sTag + sLetter + "_0" + IntToString(nNum))));
}

void WraperShowLevelUpGUI()
{
    int bAdd = GetGlobalBoolean("DAN_EXTRA");
    int nHigh =(GetGlobalNumber("DAN_EXTRA_XP2") + 128) << 8;
   // AurPostString(IntToString(nHigh),5,12,5.0);
    int nLow = GetGlobalNumber("DAN_EXTRA_XP") + 128;
   // AurPostString(IntToString(nLow),5,13,5.0);
    int nExtra = nHigh  | nLow;
   // AurPostString("Extra Saved: " + IntToString(nExtra),5,14,5.0);
    if(bAdd)
    {
       // AurPostString("Setting: " + IntToString(nExtra),5,15,5.0);
        GiveXPToCreature(GetFirstPC(),nExtra);
    }
    SetGlobalNumber("DAN_EXTRA_XP",0);
    SetGlobalNumber("DAN_EXTRA_XP2",0);
    ShowLevelUpGUI();
}

int GetNumberOfWanderingKathHounds()
{
    int nNumber;
   // int nNumber2;
    int nCount = GetStringLength(WANDERING_HOUND_TAG);
    object oHound = GetFirstObjectInArea();
    while(GetIsObjectValid(oHound))
    {
     //   AurPostString("Tag: " + GetTag(oHound),5,3,5.0);
        if(GetStringLeft(GetTag(oHound),nCount) == WANDERING_HOUND_TAG)
        {
            nNumber++;
        }
       // nNumber2++;
        oHound = GetNextObjectInArea();
       // AurPostString("Tag: " + GetTag(oHound),5,4,5.0);
    }
    //AurPostString("Number of Objects: " + IntToString(nNumber2),5,5,5.0);
   // AurPostString("Number of Objects: " + IntToString(nNumber),5,6,5.0);
    return nNumber;
}

void SpawnWanderingKathHound(int nNumberOfHounds)
{
    string sHound = WANDERING_HOUND_TAG + IntToString(nNumberOfHounds);
    location lSpawn = GetLocation(GetObjectByTag( "WP_" + sHound + "_01" ));
    CreateObject(OBJECT_TYPE_CREATURE,sHound,lSpawn);
    nNumberOfHounds--;
    if(nNumberOfHounds > 0)
    {
        SpawnWanderingKathHound(nNumberOfHounds);
    }

}
