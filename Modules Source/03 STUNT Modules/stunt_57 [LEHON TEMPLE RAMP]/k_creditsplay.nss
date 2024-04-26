void main() {
  SetGlobalNumber("GBL_MAIN_SITH_LORD",4);
  SetGlobalNumber("003EBO_RETURN_DEST",8);
  SetGlobalNumber("003EBO_BACKGROUND",2);
  SetGlobalNumber("K_KOTOR_MASTER",62);//LS END
  CreateItemOnObject("ebon_armband",GetFirstPC(),1,0);
	StartNewModule("ebo_m12aa");
}

