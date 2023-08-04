#include "k_inc_utility"
#include "k_inc_generic"

string sTraskTag = "end_trask";
string sTraskWP = "endwp_tarsk01";
string sCarthTag = "Carth";

string SOLDIER_WEAPON = "g_w_blstrrfl001";
string SOLDIER_ITEM01 = "g_i_adrnaline003";
string SOLDIER_ITEM02 = "";

string SCOUT_WEAPON = "g_w_blstrpstl001";
string SCOUT_ITEM01 = "g_i_adrnaline002";
string SCOUT_ITEM02 = "g_i_implant101";

string SCOUNDREL_WEAPON = "g_w_blstrpstl001";
string SCOUNDREL_ITEM01 = "g_i_secspike01";
string SCOUNDREL_ITEM02 = "g_i_progspike01";

int ROOM3_DEAD = 3;
int ROOM5_DEAD = 4;
int ROOM7_DEAD = 2;

int TRASK_DEFAULT = -1;
int TRASK_MUST_GET_GEAR = 0;
int TRASK_GEAR_DONE = 1;
int TRASK_TARGET_DONE = 2;
int TRASK_MUST_EQUIP = 3;
int TRASK_EQUIP_DONE = 4;
int TRASK_MUST_MAP = 5;
int TRASK_MAP_DONE = 6;
int TRASK_MUST_SWITCH = 7;
int TRASK_SWITCH_DONE = 8;
int TRASK_SWITCH_REMIND = 9;
int TRASK_CARTH_BRIDGE = 10;
int TRASK_BRIDGE_DONE = 11;
int TRASK_MUST_DOOR = 12;
int TRASK_DOOR_DONE = 13;
int TRASK_ROOM3_DONE = 14;
int TRASK_MUST_MEDPACK = 15;
int TRASK_COMBAT_WARNING = 16;
int TRASK_COMBAT_WARNING2 = 17;
int TRASK_COMPUTER_DONE = 18;
int TRASK_MUST_DROID = 19;
int TRASK_DROID_DONE = 20;
int TRASK_MUST_MAP_02 = 21;
int TRASK_NOTHING_02 = 22;
//int TRASK_COMBAT_WARNING = 27;
int TRASK_LEVEL_INIT = 28;
int TRASK_MUST_LEVEL = 29;
int TRASK_PARTY_LEVEL = 30;
int TRASK_LEVEL_DONE = 31;
string LOCKER_TAG = "end_locker01";
string STEALTH_UNIT = "g_i_belt010";
//returns Trask's object id
object GetTrask();

// checks if the conditions for passing the healing stage have been met
int HealingDone();

// returns Carth's object id
object GetCarth();

// checks if this has never been done before. uses sw 10
int HasNeverTriggered();

// Has Trask initiate with the pc at any distance
void TalkTrask();

// returns the effect from the corridor explosion
effect CorridorExplosion();

//spawns equipment into the first locker dependent on the players class
void SpawnStartingEquipment();

// returns if the door has been sliced (uses plot 2)
int GetIsSecureDoorSliced(object oDoor = OBJECT_SELF);

// sets the slice state of the door (uses plot 2)
void SetSecureDoorSliced(int bState, object oDoor = OBJECT_SELF);

// returns if the door has been repaired (uses plot 3)
int GetIsDamagedDoorRepaired(object oDoor = OBJECT_SELF);

// sets the repaired state of the door (uses plot 3)
void SetDamagedDoorRepaired(int bState, object oDoor = OBJECT_SELF);

// returns the value of the trask dialouge state global
int GetTraskState();

//sets the trask dialouge global
void SetTraskState(int nValue);

// returns true if there is somethin equipped in the weapon or body slots
int GetHasEquippedSomething();

// Checks if Trask is already waiting to initiate
int GetTraskWillInitiate();

// Sets the flag for Trask waiting to initiate
void SetTraskWillInitiate(int nValue);

//returns Carth dialgue state
int GetCarthState();

//sets Carth dialogue state
void SetCarthState(int nValue);

// plays an explosion
void PlayExplosion(string sWP = "end_explode01", int bWithShake = TRUE, int bWithRumble = TRUE);

//returns a cutscene invisible placeable based on the given number
object GetCutsceneObject(int nObjectNumber);
//////////////////////////////////////////////////////////////////////////


object GetTrask()
{
    return GetObjectByTag(sTraskTag);
}

int HealingDone()
{
    int bDone;
    object oPC = GetFirstPC();
    int bHasMedPack = GetIsObjectValid(GetItemPossessedBy(oPC,"g_i_medeqpmnt01"));
    int bFullHitPoints = GetCurrentHitPoints(oPC) == GetMaxHitPoints(oPC);
    if(bFullHitPoints || bHasMedPack == FALSE)
    {

        bDone = TRUE;
    }
    return bDone;
}

object GetCarth()
{
    return GetObjectByTag("Carth");
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

void TalkTrask()
{
    object oTrask = GetTrask();
    if(GetPartyMemberByIndex(0) == oTrask)
    {
        SetPartyLeader(NPC_PLAYER);
    }
   // AurPostString("Trask trying to talk" + IntToString(GetTraskState()),5,5,5.0);
    NoClicksFor(0.5);
    DelayCommand(0.1,SignalEvent(oTrask,EventUserDefined(50)));
}

effect CorridorExplosion()
{
    effect eZap = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L,GetObjectByTag("end_zap01"),BODY_NODE_CHEST);
    return EffectLinkEffects(EffectDamage(5),eZap);
}

object GetSpeaker()
{
    return GetPartyMemberByIndex(1);
}

object GetListener()
{
    return GetPartyMemberByIndex(0);
}

void SpawnStartingEquipment()
{
    object oLocker = GetObjectByTag(LOCKER_TAG);
    int nClass = GetClassByPosition(1,GetFirstPC());
    if(nClass == CLASS_TYPE_SCOUNDREL)
    {
        CreateItemOnObject(SCOUNDREL_WEAPON,oLocker);
        CreateItemOnObject(SCOUNDREL_ITEM01,oLocker);
        CreateItemOnObject(SCOUNDREL_ITEM02,oLocker);
    }
    else if(nClass == CLASS_TYPE_SCOUT)
    {
        CreateItemOnObject(SCOUT_WEAPON,oLocker);
        CreateItemOnObject(SCOUT_ITEM01,oLocker);
        CreateItemOnObject(SCOUT_ITEM02,oLocker);
    }
    else if(nClass == CLASS_TYPE_SOLDIER)
    {
        CreateItemOnObject(SOLDIER_WEAPON,oLocker);
        CreateItemOnObject(SOLDIER_ITEM01,oLocker);
        CreateItemOnObject(SOLDIER_ITEM02,oLocker);
    }

    if(GetHasSkill(SKILL_STEALTH,GetFirstPC()))
    {
        CreateItemOnObject(STEALTH_UNIT,oLocker);
    }
}

int GetIsSecureDoorSliced(object oDoor = OBJECT_SELF)
{
    return UT_GetPlotBooleanFlag(oDoor,SW_PLOT_BOOLEAN_02);
}

void SetSecureDoorSliced(int bState, object oDoor = OBJECT_SELF)
{
    UT_SetPlotBooleanFlag(oDoor,SW_PLOT_BOOLEAN_02,bState);
}

int GetIsDamagedDoorRepaired(object oDoor = OBJECT_SELF)
{
    return UT_GetPlotBooleanFlag(oDoor,SW_PLOT_BOOLEAN_03);
}

void SetDamagedDoorRepaired(int bState, object oDoor = OBJECT_SELF)
{
    UT_SetPlotBooleanFlag(oDoor,SW_PLOT_BOOLEAN_03,bState);
}

int GetTraskState()
{
    return GetGlobalNumber("END_TRASK_DLG");
}

void SetTraskState(int nValue)
{
  //  AurPostString("New State" + IntToString(nValue),5,7,2.0);
    SetGlobalNumber("END_TRASK_DLG",nValue);
   // AurPostString("Set: " + IntToString(nValue),5,10,3.0);
}

int GetHasEquippedSomething()
{
    int bItemEquipped = FALSE;
    object oPC = GetFirstPC();
    if(GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON,oPC)) ||
       GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON,oPC)) ||
       GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_BODY,oPC)) )
    {
            bItemEquipped = TRUE;
    }
    return bItemEquipped;
}

int GetTraskWillInitiate()
{
    return UT_GetPlotBooleanFlag(GetTrask(),SW_PLOT_BOOLEAN_03);
}

void SetTraskWillInitiate(int nValue)
{
    UT_SetPlotBooleanFlag(GetTrask(),SW_PLOT_BOOLEAN_03,nValue);
}

int GetCarthState()
{
    return GetGlobalNumber("END_CARTH_DLG");
}

void SetCarthState(int nValue)
{
    SetGlobalNumber("END_CARTH_DLG",nValue);
}

void PlayExplosion(string sWP = "end_explode01", int bWithShake = TRUE, int bWithRumble = TRUE)
{
    location lExplode = GetLocation(GetNearestObjectByTag(sWP));
    effect eExplode = EffectVisualEffect(VFX_FNF_GRENADE_FRAGMENTATION);
    effect eShake = EffectVisualEffect(VFX_IMP_SCREEN_SHAKE);
    ApplyEffectAtLocation(DURATION_TYPE_INSTANT,eExplode,lExplode);
    if(bWithShake)
    {
        ApplyEffectToObject(DURATION_TYPE_INSTANT,eShake,GetFirstPC());
    }
    if(bWithRumble)
    {
        PlayRumblePattern(14);
    }
}

object GetCutsceneObject(int nObjectNumber)
{
    return GetObjectByTag("end01_sceneobj0" + IntToString(nObjectNumber));
}
