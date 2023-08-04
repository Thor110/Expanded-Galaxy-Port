// the first time the player enters this area after arriving the port variable is set to true.
//This means the player must pay the docking fees
void main()
{
    object oEnter = GetEnteringObject();
    if(GetIsPC(oEnter))
    {
        if(GetGlobalBoolean("K_MAN_PORT_FEE") == FALSE)  //this is set to false when the player goes to another planet
        {
            SetGlobalBoolean("K_MAN_PORT_FEE",TRUE);
            SetGlobalBoolean("MAN_PORT_ZONE",TRUE);   //false means that the player has spoken to tthe port official
        }
    }
}
