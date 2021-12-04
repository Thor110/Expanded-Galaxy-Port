//Sets the Genoharadan plot to active, gives player Genoharadan datapad.

void main()
{
    SetGlobalNumber("K_Genoharadan",1);
    CreateItemOnObject("Geno_Datapad",GetFirstPC());
}
