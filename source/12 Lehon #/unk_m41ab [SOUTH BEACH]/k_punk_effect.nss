void main() {
	effect efBeam = EffectBeam(2038, GetObjectByTag("unk41_pillar1", 0), 2, 0);
	effect effect3 = EffectBeam(2038, GetObjectByTag("unk41_pillar2", 0), 2, 0);
	effect effect5 = EffectBeam(2038, GetObjectByTag("unk41_pillar3", 0), 2, 0);
	effect effect7 = EffectBeam(2038, GetObjectByTag("unk41_pillar4", 0), 2, 0);
	effect effect9 = EffectBeam(2038, GetObjectByTag("unk41_pillar5", 0), 2, 0);
	effect effect11 = EffectBeam(2038, GetObjectByTag("unk41_pillar6", 0), 2, 0);
	ApplyEffectToObject(2, efBeam, GetObjectByTag("unk41_pillar6", 0), 0.0);
	ApplyEffectToObject(2, efBeam, GetObjectByTag("unk41_pillar2", 0), 0.0);
	ApplyEffectToObject(2, effect3, GetObjectByTag("unk41_pillar1", 0), 0.0);
	ApplyEffectToObject(2, effect3, GetObjectByTag("unk41_pillar3", 0), 0.0);
	ApplyEffectToObject(2, effect5, GetObjectByTag("unk41_pillar2", 0), 0.0);
	ApplyEffectToObject(2, effect7, GetObjectByTag("unk41_pillar5", 0), 0.0);
	ApplyEffectToObject(2, effect9, GetObjectByTag("unk41_pillar4", 0), 0.0);
	ApplyEffectToObject(2, effect9, GetObjectByTag("unk41_pillar6", 0), 0.0);
	ApplyEffectToObject(2, effect11, GetObjectByTag("unk41_pillar1", 0), 0.0);
	ApplyEffectToObject(2, effect11, GetObjectByTag("unk41_pillar5", 0), 0.0);
	effect effect13 = EffectBeam(2038, GetObjectByTag("unk41_dpillar1", 0), 2, 0);
	effect effect15 = EffectBeam(2038, GetObjectByTag("unk41_dpillar2", 0), 2, 0);
	effect effect17 = EffectBeam(2038, GetObjectByTag("unk41_dpillar3", 0), 2, 0);
	effect effect19 = EffectBeam(2038, GetObjectByTag("unk41_dpillar4", 0), 2, 0);
	effect effect21 = EffectBeam(2038, GetObjectByTag("unk41_dpillar5", 0), 2, 0);
	effect effect23 = EffectBeam(2038, GetObjectByTag("unk41_dpillar6", 0), 2, 0);
	ApplyEffectToObject(2, effect13, GetObjectByTag("unk41_dpillar2", 0), 0.0);
	ApplyEffectToObject(2, effect15, GetObjectByTag("unk41_dpillar3", 0), 0.0);
	ApplyEffectToObject(2, effect17, GetObjectByTag("unk41_dpillar4", 0), 0.0);
	ApplyEffectToObject(2, effect19, GetObjectByTag("invisd1", 0), 0.0);
	ApplyEffectToObject(2, effect21, GetObjectByTag("invisd2", 0), 0.0);
	ApplyEffectToObject(2, effect23, GetObjectByTag("unk41_dpillar5", 0), 0.0);
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
}

