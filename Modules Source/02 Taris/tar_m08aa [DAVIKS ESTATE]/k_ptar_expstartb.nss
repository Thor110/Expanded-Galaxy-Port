// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	int nCnt;
	object oExp;
	
	nCnt = 1;
	
	while (GetIsObjectValid(oExp = GetNearestObjectByTag("tar08_wpexplosion", OBJECT_SELF, nCnt)) && nCnt < 2)
		{
			Db_PostString("EXPLOSION", 5, 5, 2.0);
			
			DelayCommand((nCnt - 1) * 2.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_GRENADE_FRAGMENTATION, FALSE), GetLocation(oExp), 0.0));
			
			nCnt++;
		}
}
