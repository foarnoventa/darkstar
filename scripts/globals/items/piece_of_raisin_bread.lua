-----------------------------------------
-- ID: 4546
-- Item: piece_of_raisin_bread
-- Food Effect: 30Min, All Races
-----------------------------------------
-- Health 20
-- Dexterity -1
-- Vitality 4
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effects.FOOD) == true or target:hasStatusEffect(dsp.effects.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effects.FOOD,0,0,1800,4546);
end;

function onEffectGain(target, effect)
    target:addMod(MOD_HP, 20);
    target:addMod(MOD_DEX, -1);
    target:addMod(MOD_VIT, 4);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_HP, 20);
    target:delMod(MOD_DEX, -1);
    target:delMod(MOD_VIT, 4);
end;
