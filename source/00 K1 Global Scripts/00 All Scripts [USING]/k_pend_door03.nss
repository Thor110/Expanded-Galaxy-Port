void main()
{
    SetGlobalNumber("END_CARTH_DLG",5);
    AssignCommand(GetObjectByTag("Carth"),ActionStartConversation(GetPCSpeaker()));
}
