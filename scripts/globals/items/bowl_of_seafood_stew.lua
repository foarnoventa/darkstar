-----------------------------------------
-- ID: 4561
-- Item: Bowl of Seafood Stew
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Health 20
-- Dexterity 1
-- Vitality 5
-- Defense % 25
-- Defense Cap 120
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
    target:addStatusEffect(dsp.effects.FOOD,0,0,10800,4561);
end;

function onEffectGain(target, effect)
    target:addMod(MOD_HP, 20);
    target:addMod(MOD_DEX, 1);
    target:addMod(MOD_VIT, 5);
    target:addMod(MOD_FOOD_DEFP, 25);
    target:addMod(MOD_FOOD_DEF_CAP, 120);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_HP, 20);
    target:delMod(MOD_DEX, 1);
    target:delMod(MOD_VIT, 5);
    target:delMod(MOD_FOOD_DEFP, 25);
    target:delMod(MOD_FOOD_DEF_CAP, 120);
end;
