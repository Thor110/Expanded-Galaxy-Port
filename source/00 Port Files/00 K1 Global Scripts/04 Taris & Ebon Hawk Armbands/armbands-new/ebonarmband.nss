int spotCheck()
{
    if ( ( GetModuleName() == "ebo_m12aa") ||
         ( GetModuleName() == "001EBO") ||
         ( GetModuleName() == "end_m01ab") ||
         ( GetModuleName() == "tar_m02af") ||
         ( GetModuleName() == "tar_m03af") ||
         ( GetModuleName() == "tar_m08aa") ||
         ( GetModuleName() == "tar_m09aa") ||
         ( GetModuleName() == "tar_m09ab") ||
         ( GetModuleName() == "tar_m10aa") ||
         ( GetModuleName() == "tar_m10ab") ||
         ( GetModuleName() == "tar_m10ac") ||
         ( GetModuleName() == "tar_m11aa") ||
         ( GetModuleName() == "tar_m11ab") ||
         ( GetModuleName() == "ebo_m40aa") ||
         ( GetModuleName() == "ebo_m40ad") ||
         ( GetModuleName() == "ebo_m41aa") ||
         ( GetModuleName() == "ebo_m46ab") ||
         ( GetModuleName() == "danm15") ||//could use get area escapable property properly here?
         ( GetModuleName() == "manm27aa") ||//IE : set them all so that they can be altered via scripts.
         ( GetModuleName() == "manm28aa") ||//maybe
         ( GetModuleName() == "manm28ab") ||//that way you can set it to true in these levels
         ( GetModuleName() == "manm28ac") ||//and only check if(GetAreaUnescapable())
         ( GetModuleName() == "manm28ad") ||//instead of all these module names...
         ( GetModuleName() == "kas_m23ad") ||//then just make sure that the flag is set accordingly in level constructor files
         ( GetModuleName() == "korr_m39aa") ||
         ( GetModuleName() == "lev_m40aa") ||
         ( GetModuleName() == "lev_m40ab") ||
         ( GetModuleName() == "lev_m40ac") ||
         ( GetModuleName() == "lev_m40ad") ||
         ( GetModuleName() == "sta_m45aa") ||//though saying that, the whole thing relies on this being true...
         ( GetModuleName() == "sta_m45ab") ||
         ( GetModuleName() == "sta_m45ac") ||//also I think setting soe areas to unescapable might cause other problems???
         ( GetModuleName() == "sta_m45ad")) {
    return TRUE;
  }//GetAreaUnescapable();
  return FALSE;
}
void main() {
  if (spotCheck()==TRUE)//if(GetAreaUnescapable())//wouldn't work on "ebo_m12aa"??// wouldn't work in most instances actually?or would you have to check if ebon hawk first
  {
    if(GetModuleName() == "ebo_m12aa" || GetModuleName() == "tar_m02af" && GetGlobalBoolean("K_LAST_WAYPOINT") == TRUE)
    {
      ShowPartySelectionGUI("armband", 0xFFFFFFFF, 0xFFFFFFFF);
    }
    else
    {
      SendMessageToPC(GetFirstPC(),"You cannot enter the Ebon Hawk while in combat.");
      BarkString(GetFirstPC(),42402);
    }
  }
  else {
    if(GetIsInConversation(GetFirstPC())&&GetIsInCombat(GetFirstPC())&&GetIsDead(GetFirstPC()))
    {
      SendMessageToPC(GetFirstPC(),"You cannot enter the Ebon Hawk while in combat.");
      BarkString(GetFirstPC(),42402);
    }
    else
    {
      if(GetIsObjectValid(GetObjectByTag("K_LAST_LOCATION")))
      {
        DestroyObject(GetObjectByTag("K_LAST_LOCATION"),0.0,FALSE,0.0,0);
      }
      if(GetGlobalBoolean("K_LAST_WAYPOINT") == FALSE)
      {
        SetGlobalBoolean("K_LAST_WAYPOINT",TRUE);
      }
      CreateObject(32,"g_lastlocal",GetLocation(GetFirstPC()),0);
      SetGlobalString("K_LAST_MODULE",GetModuleName());
      if(GetGlobalBoolean("Tar_Destroyed")==TRUE)
      {
        //if(GetGlobalNumber("K_KOTOR_MASTER") == 61||50??)//this variable won't work.
        //{//or create a variable?
        //  StartNewModule("ebo_m41aa");
        //}//or determine the right variables to check because the above is set to various values throughout the unknown world sequence
        //else
        //{//alternatively merge ebo_m41aa and ebo_m12aa into one module?
          StartNewModule("ebo_m12aa");
        //}//either merge or determine a solution as I am fairly certain the unknown world uses ebo_m41aa
      }
      else
      {
        StartNewModule("tar_m02af");
      }
    }
  }
}