void main()
{
	object oREPUBLICSO = GetObjectByTag("REPUBLICSO", 0);
	AssignCommand(oREPUBLICSO, ActionMoveToObject(GetObjectByTag("tar04_wprepflee1", 0), 1, 1.0));
	//AssignCommand(oREPUBLICSO, ActionMoveToObject(GetObjectByTag("tar04_wprepflee2", 0), 1, 1.0));
  ///*DelayCommand(1.0,*/AssignCommand(oREPUBLICSO, ActionMoveToObject(GetObjectByTag("tar04_wprepflee2", 0), 1, 1.0))/*)*/;
  //seems to run to the waypoints correctly skipping over #2 ?.!

  CreateObject(1,"tar04_repsolrg",GetLocation(GetObjectByTag("tar04_wpreprg")));
  ExecuteScript("k_act_cmusic_on",OBJECT_SELF, 0xFFFFFFFF);
	//object oRG = GetObjectByTag("tar04_repsolrg", 0);
  //AssignCommand(oRG,ActionMoveToObject(GetObjectByTag("tar04_repsolflee"), 1, 1.0));
  AssignCommand(GetObjectByTag("tar04_repsolrg",0),ActionMoveToObject(GetObjectByTag("tar04_repsolflee"), 1, 1.0));
  //rakghoul not moving or attacking
  DelayCommand(1.0,AssignCommand(GetObjectByTag("tar04_repsolrg"),ActionAttack(GetObjectByTag("REPUBLICSO"))));
  //rakghoul spawns off-screen at one of the four waypoints named "tar04_wpreprg"
  //doesn't attack and poison the soldier
}