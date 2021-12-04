//Signals the selkath apprentices to flee
void main()
{

    object oSelkath;
    int nIdx;
    for(nIdx = 1; nIdx <=3; nIdx++)
    {
        SignalEvent(GetObjectByTag("man27_seljed" +IntToString(nIdx)),EventUserDefined(20));
    }
}
