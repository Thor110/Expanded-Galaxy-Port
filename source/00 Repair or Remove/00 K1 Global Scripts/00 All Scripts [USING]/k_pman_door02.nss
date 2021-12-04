//Once the door opens the Selkath will swich to insane, which will
//cause them to attack indescrinamtly.
void main()
{
    int nNth = 0;
    object oSelkath = GetObjectByTag("man28_inssel03",nNth);
    while(GetIsObjectValid(oSelkath))
    {

        ChangeToStandardFaction(oSelkath,STANDARD_FACTION_INSANE);
        nNth++;
        oSelkath = GetObjectByTag("man28_inssel03",nNth);
    }
}
