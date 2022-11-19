//

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("G_JUHANIH_STATE") == 1 &&
                GetGlobalNumber("T_LEVH")==0);


    return iResult;
}
