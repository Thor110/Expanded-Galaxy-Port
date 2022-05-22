void main() {
	//object object1 = OBJECT_SELF;
	//DelayCommand(0.5, ExecuteScript("k_ren_levescape", object1, 0xFFFFFFFF));
  //SetGlobalNumber("K_TURRET_SKYBOX", 10);
  //StartNewModule("m12ab", "", "17a", "11a");
  //SetGlobalNumber("003EBO_RETURN_DEST",8);
  //if not set you can leave the ebon hawk to previous destination
  //SetGlobalNumber("003EBO_BACKGROUND",8);
  SetGlobalNumber("K_CAPTURED_LEV",11);
  SetGlobalNumber("GBL_MAIN_SITH_LORD",3);
  CreateItemOnObject("ebon_armband",GetFirstPC(),1,0);
  StartNewModule("ebo_m40ad", "", "17a", "11a", "11b");
}

