void main()
{
    SetEncounterActive(TRUE,GetObjectByTag("end_bridgesith",0));
    SetEncounterActive(TRUE,GetObjectByTag("end_bridgesith",1));
    SetEncounterActive(TRUE,GetObjectByTag("end_bridgerep"));
    SetGlobalBoolean("END_BRIDGE_COMBAT",TRUE);
    SetButtonMashCheck(TRUE);
}
