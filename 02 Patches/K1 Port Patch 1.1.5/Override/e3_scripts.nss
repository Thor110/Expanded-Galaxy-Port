//forward declares
void InitAI();
void DetermineActionForRound();
object GetWalkWP(string pathPrefix,int wpnum);
void WalkPath(string pathPrefix = "",int run = FALSE, float pause = 0.0);

//
//utilities
//
string PadString(string str = "",string pad = " ",int length = 0)
{
  while(GetStringLength(str) < length)
  {
    str = pad + str;
  }
  return(str);
}

//
//ai
//

//constants
int E3_AI_DEFAULT = 0;
int E3_AI_PATHING = 1;
int E3_AI_ATTACKING = 2;
int E3_AI_SEEKING = 3;
int E3_AI_IDLE = 4;

int E3_AI_TYPE_PASSIVE = 0;
int E3_AI_TYPE_AGGRESSIVE = 1;

int E3_AI_SHOUTCH0 = 0x001;
int E3_AI_SHOUTCH1 = 0x002;
int E3_AI_SHOUTCH2 = 0x004;
int E3_AI_SHOUTCH3 = 0x008;
int E3_AI_SHOUTCH4 = 0x010;
int E3_AI_SHOUTCH5 = 0x020;
int E3_AI_SHOUTCH6 = 0x040;
int E3_AI_SHOUTCH7 = 0x080;
int E3_AI_SHOUTCH8 = 0x100;
int E3_AI_SHOUTCH9 = 0x200;

void InitAI()
{
  SetLocalFloat(OBJECT_SELF,"E3_AI_ATTACKRNG",3.0);
  SetLocalFloat(OBJECT_SELF,"E3_AI_SEEKRNG",5.0);
  SetLocalString(OBJECT_SELF,"E3_AI_PATH","");
  SetLocalFloat(OBJECT_SELF,"E3_AI_PATH_PAUSE",0.0);
  SetLocalInt(OBJECT_SELF,"E3_AI_PATH_RUN",FALSE);
  SetLocalInt(OBJECT_SELF,"E3_AI_STATE",E3_AI_DEFAULT);
  SetLocalInt(OBJECT_SELF,"E3_AI_SHOUT",0);
  SetLocalInt(OBJECT_SELF,"E3_AI_TYPE",E3_AI_TYPE_AGGRESSIVE);
  SetLocalLocation(OBJECT_SELF,"E3_AI_SPAWNSPOT",GetLocation(OBJECT_SELF));
  SetLocalInt(OBJECT_SELF,"E3_AI_FIRSTWP",-1);
  SetLocalInt(OBJECT_SELF,"E3_AI_LASTWP",-1);
}

void EnableAIShout(int aiShout)
{
  SetLocalInt(GetModule(),"E3_AI_SHOUTS",GetLocalInt(GetModule(),"E3_AI_SHOUTS") |
    aiShout);
}

void DoAIShout()
{
  //AurPostString(IntToString(GetLocalInt(OBJECT_SELF,"E3_AI_SHOUT")),5,5,3.0);
  SetLocalInt(GetModule(),"E3_AI_SHOUTS",GetLocalInt(GetModule(),"E3_AI_SHOUTS") |
    GetLocalInt(OBJECT_SELF,"E3_AI_SHOUT"));
}

void PlayAIAnimation(object ai,int animation,float fspeed = 1.0,float seconds = 0.0)
{
  AssignCommand(ai,ClearAllActions());
  SetLocalInt(ai,"E3_AI_STATE",E3_AI_IDLE);
  AssignCommand(ai,ActionPlayAnimation(animation,fspeed,seconds));
  AssignCommand(ai,ActionDoCommand(SetLocalInt(ai,"E3_AI_STATE",E3_AI_DEFAULT)));
}

void ClearAIShout(int aiShout)
{
  SetLocalInt(GetModule(),"E3_AI_SHOUTS",
    GetLocalInt(GetModule(),"E3_AI_SHOUTS") & ~aiShout);
}

void ClearAIShouts()
{
  SetLocalInt(GetModule(),"E3_AI_SHOUTS",0);
}

void DetermineActionForRound()
{
  float attackRng = GetLocalFloat(OBJECT_SELF,"E3_AI_ATTACKRNG");
  float seekRng = GetLocalFloat(OBJECT_SELF,"E3_AI_SEEKRNG");
  string myPath = GetLocalString(OBJECT_SELF,"E3_AI_PATH");
  int aiState = GetLocalInt(OBJECT_SELF,"E3_AI_STATE");
  int aiType = GetLocalInt(OBJECT_SELF,"E3_AI_TYPE");
  object target = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC);
  float distToTarget = GetDistanceBetween(OBJECT_SELF,target);
  int shouts = GetLocalInt(GetModule(),"E3_AI_SHOUTS");
  int myshout = GetLocalInt(OBJECT_SELF,"E3_AI_SHOUT");

  //easy case
  if(aiState == E3_AI_IDLE)
  {
    return;
  }

  //first, is the target within our seekrng
  if((distToTarget < seekRng || (shouts & myshout)) && GetIsObjectValid(target) &&
    aiType != E3_AI_TYPE_PASSIVE)
  {
    //is it within attack range?
    if(distToTarget < attackRng)
    {
      //AurPostString("attacking",5,5,3.0);
      if(aiState != E3_AI_ATTACKING)
      {
        ClearAllActions();
        SetLocalInt(OBJECT_SELF,"E3_AI_STATE",E3_AI_ATTACKING);
        ActionAttack(target);
        return;
      }
      else
      {
        return;
      }
    }
    else
    {
      //AurPostString("seeking",5,5,3.0);
      if(aiState != E3_AI_SEEKING)
      {
        ClearAllActions();
        SetLocalInt(OBJECT_SELF,"E3_AI_STATE",E3_AI_SEEKING);
      }
      ActionMoveToObject(target,TRUE,attackRng-1);
      return;
    }
  }

  //AurPostString("pathing" + IntToString(E3_AI_PATHING),5,5,3.0);
  if(aiState != E3_AI_PATHING)
  {
    ClearAllActions();
    if(myPath != "" && GetIsObjectValid(GetWalkWP(myPath,0)))
    {
      SetLocalInt(OBJECT_SELF,"E3_AI_STATE",E3_AI_PATHING);
      WalkPath(myPath,GetLocalInt(OBJECT_SELF,"E3_AI_PATH_RUN"),
        GetLocalFloat(OBJECT_SELF,"E3_AI_PATH_PAUSE"));
      //AurPostString("walking path",5,5,1.0);
    }
    else
    {
      ActionMoveToPoint(GetLocalLocation(OBJECT_SELF,"E3_AI_SPAWNSPOT"));
      //AurPostString("returning to spawn",5,5,1.0);
    }
  }
}

//
//path walking functions
//
void RunCircuit(string pathPrefix = "", int startNum = 0,int loop = FALSE,int run = FALSE, float pause = 0.0)
{
  object nextwp = GetWaypointByTag(pathPrefix + "_" + PadString(IntToString(startNum),"0",2));

  while(GetIsObjectValid(nextwp))
  {
    ActionWait(pause);
    ActionMoveToObject(nextwp, run);
    startNum++;
    nextwp = GetWaypointByTag(pathPrefix + "_" + PadString(IntToString(startNum),"0",2));
  }

  if(loop)
  {
    return;
  }

  startNum--;
  nextwp = GetWaypointByTag(pathPrefix + "_" + PadString(IntToString(startNum),"0",2));
  while(GetIsObjectValid(nextwp))
  {
    ActionWait(pause);
    ActionMoveToObject(nextwp, run);
    startNum--;
    nextwp = GetWaypointByTag(pathPrefix + "_" + PadString(IntToString(startNum),"0",2));
  }
}

void RunNextCircuit(string pathPrefix = "",int loop = FALSE,int run = FALSE,float pause = 0.0)
{
    RunCircuit(pathPrefix,0,loop,run,pause);  //***************************************
    ActionWait(pause);
    ActionDoCommand(RunNextCircuit(pathPrefix,loop,run,pause));
}

void RunRandWP(string pathPrefix = "",int lastwp = 0,int run = FALSE,float pause = 0.0)
{
  int randwp = Random(lastwp + 1);
  object waypoint = GetWaypointByTag(pathPrefix + "_" + PadString(IntToString(randwp),"0",2));

  ActionWait(pause);
  ActionMoveToObject(waypoint,run);
}

void RunNextRandWP(string pathPrefix = "",int lastwp = 0,int run = FALSE,float pause = 0.0)
{
  RunRandWP(pathPrefix,lastwp,run,pause);
  ActionWait(pause);
  ActionDoCommand(RunNextRandWP(pathPrefix,lastwp,run,pause));
}

object GetWalkWP(string pathPrefix,int wpnum)
{
  return GetWaypointByTag(pathPrefix + "_" + PadString(IntToString(wpnum),"0",2));
}

//path format is XXXX[_LOOP|_RAND]_NN where XXXX is any string and NN must be less than 16
void WalkPath(string pathPrefix = "",int run = FALSE, float pause = 0.0)
{
  int i = 0;

  //kick out cases
  if(pathPrefix == "")
  {
    return;
  }

  if(!GetIsObjectValid(GetWalkWP(pathPrefix,0)))
  {
    return;
  }

  //on first time, determine range of waypoints
  int firstwp = GetLocalInt(OBJECT_SELF,"E3_AI_FIRSTWP");
  int lastwp = GetLocalInt(OBJECT_SELF,"E3_AI_LASTWP");
  if(firstwp < 0)
  {
    i = 1;
    firstwp = 0;
    SetLocalInt(OBJECT_SELF,"E3_AI_FIRSTWP",0);
    object waypoint = GetWalkWP(pathPrefix,i);
    while(GetIsObjectValid(waypoint) && i < 16)
    {
      i++;
      waypoint = GetWalkWP(pathPrefix,i);
    }
    lastwp = i - 1;
    SetLocalInt(OBJECT_SELF,"E3_AI_LASTWP",lastwp);
  }

  //determine if path is a looping path
  int loop = FALSE;
  if(GetStringRight(pathPrefix,5) == "_LOOP")
  {
    loop = TRUE;
  }

  //determine if path is random
  int rand = FALSE;
  if(GetStringRight(pathPrefix,5) == "_RAND")
  {
    rand = TRUE;
  }

  ClearAllActions();

  if(!rand)
  {
      //find nearest waypoint on path
      i = 0;
      object waypoint = GetWalkWP(pathPrefix,i);
      object nearestwp = waypoint;

      while(GetIsObjectValid(waypoint) && i < 16)
      {
        if(GetDistanceBetween(waypoint,OBJECT_SELF) < GetDistanceBetween(nearestwp,OBJECT_SELF))
        {
          nearestwp = waypoint;
        }
        i++;
        waypoint = GetWaypointByTag(pathPrefix + "_" + PadString(IntToString(i),"0",2));
      }

      if(!GetIsObjectValid(nearestwp))
      {
        return;
      }

      int nearwpNum = StringToInt(GetStringRight(GetTag(nearestwp),2));
      RunCircuit(pathPrefix,nearwpNum,loop,run,pause);
      ActionWait(pause);
      ActionDoCommand(RunNextCircuit(pathPrefix,loop,run,pause));
  }
  else
  {
    RunRandWP(pathPrefix,lastwp,run,pause);
    ActionWait(pause);
    ActionDoCommand(RunNextRandWP(pathPrefix,lastwp,run,pause));
  }
}

