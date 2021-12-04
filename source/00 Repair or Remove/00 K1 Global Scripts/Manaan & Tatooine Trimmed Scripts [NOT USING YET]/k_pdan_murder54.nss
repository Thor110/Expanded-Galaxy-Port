void main()
{
    AssignCommand(GetFirstPC(),JumpToObject(GetObjectByTag("dan14ac_murder01")));
    AssignCommand(GetPartyMemberByIndex(1),JumpToObject(GetObjectByTag("wp_npc01")));
    AssignCommand(GetPartyMemberByIndex(2),JumpToObject(GetObjectByTag("wp_npc02")));
   // DelayCommand(1.0,AssignCommand(GetObjectByTag("dan14_bolook"),ActionStartConversation(GetFirstPC())));
    JumpToObject(GetObjectByTag("POST_dan14_bolook"));
    //DestroyObject(OBJECT_SELF,1.0);
   // SetGlobalFadeOut();
}
