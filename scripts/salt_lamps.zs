import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<salt_lamps:salt_block>);
JEI.removeAndHide(<salt_lamps:salt_chunk>);
JEI.removeAndHide(<salt_lamps:pure_salt_lamp>);

val halolite = <contenttweaker:halolite_shard>;
val awkward = <minecraft:potion>.withTag({Potion: "minecraft:awkward"});
val harm_throw = <minecraft:splash_potion>.withTag({Potion: "minecraft:harming"});
val awkward_throw = <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"});
val smooth_g = <charm:smooth_glowstone>;
val fiery = <contenttweaker:ground_fiery_netherrack>;
val copper_b = <rotn_blocks:copper_block>;
val bronze_b = <contenttweaker:block_bronze>;

recipes.remove(<salt_lamps:white_salt_lamp>);
recipes.addShapeless("white_lamp", <salt_lamps:white_salt_lamp>, [<salt_lamps:red_salt_lamp>, <ore:dyeWhite>]);

recipes.remove(<salt_lamps:red_salt_lamp>);
recipes.addShaped("red_lamp", <salt_lamps:red_salt_lamp>,
 [[halolite,halolite,halolite],
  [halolite,awkward,halolite],
  [smooth_g,smooth_g,smooth_g]]);
  
recipes.remove(<salt_lamps:hostile_mob_salt_lamp>);
recipes.addShaped("hostile_lamp", <salt_lamps:hostile_mob_salt_lamp>,
 [[fiery,halolite,fiery],
  [halolite,harm_throw,halolite],
  [copper_b,smooth_g,copper_b]]);
  
recipes.remove(<salt_lamps:passive_mob_salt_lamp>);
recipes.addShaped("passive_lamp", <salt_lamps:passive_mob_salt_lamp>,
 [[halolite,halolite,halolite],
  [halolite,awkward_throw,halolite],
  [bronze_b,<betterwithmods:candle>,bronze_b]]);