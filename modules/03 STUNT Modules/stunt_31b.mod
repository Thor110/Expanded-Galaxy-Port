MOD V1.0           �   �   8  |   q                                                                                                                           31b_convers         �  invisible001       �  k_s31b_mask        �  k_s31b_mask        �  k_scene_start      �  k_scene_start      �  k_stu_jumplev      �  k_stu_jumplev      �  k_stu_setdark      �  k_stu_setdark   	   �  light001        
   �  m44ad              �  m44ad              �  m44ad              �  module             �  n_darthrevan001    �  n_darthrevan003    �  �  �  Z  �  �  �   �    �  �  �  �  f"  U   �"  _   #  J  d$  [  �&  m  ,.  ;
  g8  =  �>  �   0?  
  :F    UR  �  DLG V3.28      �   �   �  V   �  �   �  �  b  8   ����           P          X   +                         \  (       �  ,                                                                          
                     	   !   
   
   /                                        3                                          
      7            
      ;         �        I         U         V         ����
      b         f   
      g         ����        �?
      k                !         "   ���A   #   �      $          %         &          '   o       (          )   p      *           +           ,          -          .          /          0          1          2          3          4          5          6          5       
   7   q   
   8   u      9          :          ;          <          =          >          ?          @          A          B          C       
   D   y   
   E   }      F          G   ����   H          I          J         K          L          M          N          O          P   �       Q          R             (         �         �         �         ����
      �         �   
      �         ����        �?
      �                 !           $          S   ,      9          :          ;          <          =          >          ?          @          A          B          C       
   D   �   
   E   �      F          G   ����   H          I          J         K          L          M          N          O          P   �       Q          T   0      &          '   �      9          :          ;          <          =          >          ?          @          A          B          C       
   D   �   
   E   �      F          G   ����   H          I          J         K          L          M          N          O          P   �       Q          )   �      *           +           ,          -          .          /          0          1          2          3          4          5          6          5       
   7   �   
   8   �      U      DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       Participant     StuntModel      CameraModel     VO_ID           ConversationTypeComputerType    OldHitCheck     AmbientTrack    UnequipItems    AnimatedCut     UnequipHItem    EntryList       Speaker         AnimList        Animation       Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     CamFieldOfView  CameraAnimation FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    CameraID        Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   ReplyList       EntriesList     StartingList    NextNodeID        
   DarthRevanm44ac_c02_char01m44ac_c02_cam    31b    
   DarthRevan   P�       k_s31b_mask                                   ����     k_stu_jumplev                                                               	   
                           T   }   �                                              !   "   #   $   %   &   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S         '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                                               UTP V3.28      D   7   �  7   H  i   �  �   �      ����    7   
                                   $                               1                          	           
                                                                                                                                     
      2                   6                                                                      6      !   7      "   8      #   9      $   :      %   ;      &   <      '   =      (   >      )   ?      *   @      +   A       ,           -           .           /           0           1         2   B      3   C      4   D       5       
   6   R   Tag             LocName         Description     TemplateResRef  AutoRemoveKey   CloseLockDC     Conversation    Interruptable   Faction         Plot            Min1HP          KeyRequired     Lockable        Locked          OpenLockDC      PortraitId      TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        KeyName         AnimationState  Appearance      HP              CurrentHP       Hardness        Fort            Ref             Will            OnClosed        OnDamaged       OnDeath         OnDisarm        OnHeartbeat     OnLock          OnMeleeAttacked OnOpen          OnSpellCastAt   OnTrapTriggered OnUnlock        OnUserDefined   HasInventory    PartyInteract   BodyBag         Static          Type            Useable         OnEndDialogue   OnInvDisturbed  OnUsed          PaletteID       Comment            CutStart   ǝ         ����    invisible001                   k_scene_start   Invisible placeable                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   NCS V1.0B   �            Z  �����  ����A       
DarthRevan  �����      �      Y  �����  ����,           :Ap       
DarthRevan  �����      �  A     ����  void main() {
	effect efVisual = EffectVisualEffect(7002, 0);
	ApplyEffectToObject(1, efVisual, GetObjectByTag("DarthRevan", 0), 9.0);
	effect effect3 = EffectVisualEffect(7001, 0);
	DelayCommand(9.0, ApplyEffectToObject(1, effect3, GetObjectByTag("DarthRevan", 0), 15.0));
}

NCS V1.0B  �           �       �����   ���� $  f         N         WP01  �  � n_darthrevan001     � ����     $  f        N         WP01  �  � n_darthrevan003     � ����     $      
DarthRevan  � �,                ?�     �  (       Light01  �  ,            c    ��������                            31b_convers $   �       CutStart  �        void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		SetPartyLeader(0xFFFFFFFF);
		if ((GetGender(GetFirstPC()) == 0)) {
			CreateObject(1, "n_darthrevan001", GetLocation(GetObjectByTag("WP01", 0)), 0);
		}
		if ((GetGender(GetFirstPC()) == 1)) {
			CreateObject(1, "n_darthrevan003", GetLocation(GetObjectByTag("WP01", 0)), 0);
		}
		DuplicateHeadAppearance(GetObjectByTag("DarthRevan", 0), GetFirstPC());
		AssignCommand(GetObjectByTag("Light01", 0), ActionPlayAnimation(207, 1.0, 0.0));
		AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "31b_convers", 0, 0, 1, "", "", "", "", "", ""));
	}
}

NCS V1.0B   U                 05r lev40_wpconfa 	lev_m40ac �  void main() {
	StartNewModule("lev_m40ac", "lev40_wpconfa", "05r", "", "", "", "", "");
}

NCS V1.0B  J       $   }����  ����@�         ALIGN-����   \#    �����  LEV_ALIGNMENT E    ����  �������� ����      <           $   ����� $���� ���� ����@�         ALIGN- $   }  \#     ����  ���� ���� ���� ����  F ����  // Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	AurPostString(stringParam1, intParam2, intParam3, floatParam4);
}

void main() {
	int nAlign = GetGoodEvilValue(GetFirstPC());
	int int3;
	sub1(("ALIGN-" + IntToString(nAlign)), 5, 5, 5.0);
	SetGlobalNumber("LEV_ALIGNMENT", nAlign);
	int3 = 0;
	while ((int3 < nAlign)) {
		AdjustAlignment(GetFirstPC(), 3, 1);
		(int3++);
	}
	sub1(("ALIGN-" + IntToString(GetGoodEvilValue(GetFirstPC()))), 5, 6, 5.0);
}

UTP V3.28      D   7   �  7   H  I   �  �   m      ����    7   
                                   #                               ,                          	           
                                                                                                                                     
      -                    �                                                                      1      !   2      "   3      #   4      $   5      %   6      &   7      '   8      (   9      )   :      *   ;      +   <       ,           -           .           /          0           1          2   =      3   >      4   ?       5      
   6   @   Tag             LocName         Description     TemplateResRef  AutoRemoveKey   CloseLockDC     Conversation    Interruptable   Faction         Plot            Min1HP          KeyRequired     Lockable        Locked          OpenLockDC      PortraitId      TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        KeyName         AnimationState  Appearance      HP              CurrentHP       Hardness        Fort            Ref             Will            OnClosed        OnDamaged       OnDeath         OnDisarm        OnHeartbeat     OnLock          OnMeleeAttacked OnOpen          OnSpellCastAt   OnTrapTriggered OnUnlock        OnUserDefined   HasInventory    PartyInteract   BodyBag         Static          Type            Useable         OnEndDialogue   OnInvDisturbed  OnUsed          PaletteID       Comment            Light01   ȝ         ����    light001                       Light                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   ARE V3.28      h   M     J   �  S   �  4  +
     ����    <      �                   (                                   
                   
                                         	          
                                                                                                                          ��L>                         '                                                   �>        �>         �>   !     �>   "          #           $          %     �B   &     �B   '           (          )          *           +         ,     �A   -     /D   .   �FF     /          0           1           2           3   �       4          5          6          7          8          9           :          ;           <           =           >           ?          @          A          B      
   C   (      D         E     �?
   C   5      D         E     �?   F   B      G   P      H   Q      I   R   ID              Creator_ID      Version         Tag             Name            Comments        Map             MapResX         NorthAxis       WorldPt1X       WorldPt1Y       WorldPt2X       WorldPt2Y       MapPt1X         MapPt1Y         MapPt2X         MapPt2Y         MapZoom         Expansion_List  Flags           ModSpotCheck    ModListenCheck  AlphaTest       CameraStyle     DefaultEnvMap   Grass_TexName   Grass_Density   Grass_QuadSize  Grass_Ambient   Grass_Diffuse   Grass_Prob_LL   Grass_Prob_LR   Grass_Prob_UL   Grass_Prob_UR   MoonAmbientColorMoonDiffuseColorMoonFogOn       MoonFogNear     MoonFogFar      MoonFogColor    MoonShadows     SunAmbientColor SunDiffuseColor SunFogOn        SunFogNear      SunFogFar       SunFogColor     SunShadows      DynAmbientColor IsNight         LightingScheme  ShadowOpacity   DayNightCycle   ChanceRain      ChanceSnow      ChanceLightning WindPower       LoadScreenID    PlayerVsPlayer  NoRest          NoHangBack      PlayerOnly      Unescapable     StealthXPEnabledStealthXPLoss   StealthXPMax    Rooms           RoomName        EnvAudio        AmbientScale    OnEnter         OnExit          OnHeartbeat     OnUserDefined      Untitled   �          
cm_unwsand 	   m44ad_01a	   m44ad_01xk_scene_start                                                                       !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   I   J   K   L         	   
                        C   D   E   F   G   H                GIT V3.28      t   -   �  '      U   U  �   	  4   ����          0   	      T      	   �      	   �                                q         q         1         2                   o         o      	   o      
                                                                                          
                   
                        '                    3                   �
C      ��B      ��A                   �?   !   $         ?      "   �(�B   #   u	�B   $   \A   %      �      L      "   �C   #   ��B   $   d\A   %      �   &   0   UseTemplates    AreaProperties  AmbientSndDay   AmbientSndNight AmbientSndDayVolAmbientSndNitVolEnvAudio        MusicBattle     MusicDay        MusicNight      MusicDelay      Creature List   Door List       Encounter List  List            SoundList       StoreList       TriggerList     WaypointList    Appearance      LinkedTo        TemplateResRef  Tag             LocalizedName   Description     HasMapNote      MapNote         MapNoteEnabled  XPosition       YPosition       ZPosition       XOrientation    YOrientation    Placeable List  X               Y               Z               Bearing         CameraList          sw_waypoint001   WP01   �         ����       ����    invisible001light001                               !   ,                        	   
                                              "   #   $   %   &   '   (   )   *   +                                                  PTH V3.28      D      \      |       |      �      ����                           Path_Points     Path_Conections                IFO V3.28      P   ,   `  ,      *  J  �   �     ����    +      +                                   
                            
      5   
      �         �       	          
   �         Ѕ�B      F��B      d\A                  �?                                                                            \         
         �         �         �         �         �         �         �          �      !   �      "   �      #        $        %        &   "     '   #     (         )         *         +   $  Mod_ID          Mod_Creator_ID  Mod_Version     Mod_VO_ID       Expansion_Pack  Mod_Name        Mod_Tag         Mod_Hak         Mod_Description Mod_IsSaveGame  Mod_Entry_Area  Mod_Entry_X     Mod_Entry_Y     Mod_Entry_Z     Mod_Entry_Dir_X Mod_Entry_Dir_Y Mod_Expan_List  Mod_DawnHour    Mod_DuskHour    Mod_MinPerHour  Mod_StartMonth  Mod_StartDay    Mod_StartHour   Mod_StartYear   Mod_XPScale     Mod_OnHeartbeat Mod_OnModLoad   Mod_OnModStart  Mod_OnClientEntrMod_OnClientLeavMod_OnActvtItem Mod_OnAcquirItemMod_OnUsrDefinedMod_OnUnAqreItemMod_OnPlrDeath  Mod_OnPlrDying  Mod_OnPlrLvlUp  Mod_OnSpawnBtnDnMod_OnPlrRest   Mod_StartMovie  Mod_CutSceneListMod_GVar_List   Mod_Area_list   Area_Name          �>��sq�����       ����       	   module000�   I'm Trask Ulgo, ensign with the Republic Fleet. I'm your bunk mate here on the Endar Spire. We work opposite shifts; I guess that's why you haven't seen me before.       ����    m44ad         nw_o0_deathnw_o0_dying nw_o0_respawn  m44ad                            	   
                                                                      !   "   #   $   %   &   '   (   )   *                     UTC V3.28   
   �   U   �  N   �	    �
  4  �  @   ����    J       >          ?          @          A          B          C          D          E         (                                                             s                                    	   (   
   
   4         B                                 
      C   
      G         ��                                                                                                                             
          
                           !          "          #         $         %         &          '          (          )          *           +          ,          -     �@    .         /   K      0   [      1   k      2   {      3   �      4   �      5   �      6   �      7   �      8   �      9   �      :   �      ;   �      <        =           >           >          >           >           >           >          >           >          ?   $      @   (      A   ,      B   0      C         D         E   8      F   <       G      
   H        I     �B    J           K           L          M       TemplateResRef  Race            SubraceIndex    FirstName       LastName        Appearance_Type Gender          Phenotype       PortraitId      Description     Tag             Conversation    IsPC            FactionID       Disarmable      Subrace         Deity           SoundSetFile    Plot            Interruptable   NoPermDeath     NotReorienting  BodyBag         BodyVariation   TextureVar      Min1HP          PartyInteract   Str             Dex             Con             Int             Wis             Cha             WalkRate        NaturalAC       HitPoints       CurrentHitPointsMaxHitPoints    ForcePoints     CurrentForce    refbonus        willbonus       fortbonus       GoodEvil        LawfulChaotic   ChallengeRating PerceptionRange ScriptHeartbeat ScriptOnNotice  ScriptSpellAt   ScriptAttacked  ScriptDamaged   ScriptDisturbed ScriptEndRound  ScriptEndDialoguScriptDialogue  ScriptSpawn     ScriptRested    ScriptDeath     ScriptUserDefineScriptOnBlocked SkillList       Rank            FeatList        TemplateList    SpecAbilityList ClassList       Class           ClassLevel      KnownList0      Equip_ItemList  PaletteID       Comment         BlindSpot       Hologram        IgnoreCrePath   MultiplierSet   WillNotRender   n_darthrevan001   �         ����       ����    
   DarthRevan         k_def_heartbt01k_def_percept01k_def_spellat01k_def_attacked01k_def_damage01k_def_disturb01k_def_combend01k_def_endconvk_def_dialogue01k_def_spawn01 k_def_death01k_def_userdef01k_def_blocked01                                	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   F   G   H   I   M   N   O   P   Q   R   S   T   J   K   L                                             	           UTC V3.28        a   �  S   �
  2  
  D  N  h   ����    K       >          ?          @          A          B          C          D          E         G         H         I         J         K         L         M         N         ,         8                                                             t                                   	   (   
   
   4         B                                  
      C   
      G         i                                                                                                                              
          
                           !          "          #         $         %         &          '          (          )          *           +          ,          -     �A    .         /   K      0   [      1   k      2   {      3   �      4   �      5   �      6   �      7   �      8   �      9   �      :   �      ;   �      <        =           >           >           >           >          >           >           >           >          ?   $      @         @         @         @   7      @   5      @         @   ]      @   $      A   H      B   L      C   P      D         E         F   X      G   \      H        I          J          K   d       L      
   M   (     N     �B    O           P           Q          R       TemplateResRef  Race            SubraceIndex    FirstName       LastName        Appearance_Type Gender          Phenotype       PortraitId      Description     Tag             Conversation    IsPC            FactionID       Disarmable      Subrace         Deity           SoundSetFile    Plot            Interruptable   NoPermDeath     NotReorienting  BodyBag         BodyVariation   TextureVar      Min1HP          PartyInteract   Str             Dex             Con             Int             Wis             Cha             WalkRate        NaturalAC       HitPoints       CurrentHitPointsMaxHitPoints    ForcePoints     CurrentForce    refbonus        willbonus       fortbonus       GoodEvil        LawfulChaotic   ChallengeRating PerceptionRange ScriptHeartbeat ScriptOnNotice  ScriptSpellAt   ScriptAttacked  ScriptDamaged   ScriptDisturbed ScriptEndRound  ScriptEndDialoguScriptDialogue  ScriptSpawn     ScriptRested    ScriptDeath     ScriptUserDefineScriptOnBlocked SkillList       Rank            FeatList        Feat            TemplateList    SpecAbilityList ClassList       Class           ClassLevel      KnownList0      ItemList        InventoryRes    Repos_PosX      Repos_Posy      Equip_ItemList  PaletteID       Comment         BlindSpot       Hologram        IgnoreCrePath   MultiplierSet   WillNotRender   n_darthrevan003   �         ����       ����    
   DarthRevan         k_def_heartbt01k_def_percept01k_def_spellat01k_def_attacked01k_def_damage01k_def_disturb01k_def_combend01k_def_endconvk_def_dialogue01k_def_spawn01 k_def_death01k_def_userdef01k_def_blocked01g_w_drkjdisbr001   Female                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   F   O   P   Q   U   Y   Z   [   \   ]   ^   _   `   R   S   T   V   W   X                                 	   
                                                 