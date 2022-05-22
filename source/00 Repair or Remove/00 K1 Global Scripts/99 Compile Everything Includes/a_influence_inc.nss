// a_influence_inc
/* Parameter Count: 2

Increases an NPC's influence.

Param1 - The NPC value of the player whose influence is increased.
Param2 - magnitude of influence change:
    1 - low
    2 - medium
    3 - high
    all others - medium


NPC numbers, as specified in NPC.2da

0       Atton
1       BaoDur
2       Mand
3       g0t0
4       Handmaiden
5       hk47
6       Kreia
7       Mira
8       T3m4
9       VisasMarr
10      Hanharr
11      Disciple

*/
//
// KDS 06/16/04
void main()
{

int nInfluenceLow = 8;
int nInfluenceMedium = 8;
int nInfluenceHigh = 8;

int nNPC = GetScriptParameter(1);
int nImpact = GetScriptParameter(2);
int nInfluenceChange;

switch (nImpact)

{
    case 1:
        nInfluenceChange = nInfluenceLow;
        break;
    case 2:
        nInfluenceChange = nInfluenceMedium;
        break;
    case 3:
        nInfluenceChange = nInfluenceHigh;
        break;
    default:
        nInfluenceChange = nInfluenceMedium;
        break;
}

ModifyInfluence (nNPC, nInfluenceChange);

}
