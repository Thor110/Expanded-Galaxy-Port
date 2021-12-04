void main()
{
    object oOpen = GetLastOpenedBy();
    if(GetIsPC(oOpen))
    {
        AssignCommand(GetObjectByTag("man28_merc"),ActionStartConversation(oOpen));
    }
}
