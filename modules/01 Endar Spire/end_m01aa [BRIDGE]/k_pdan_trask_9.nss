#include "k_inc_generic"

void main() {
	
	GN_SetListeningPatterns();
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_ATTACKED, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);
	
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectAssuredHit(), OBJECT_SELF, 0.0);
}
