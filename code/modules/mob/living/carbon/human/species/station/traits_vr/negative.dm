/datum/trait/negative
	category = -1

/datum/trait/negative/speed_slow
	name = "Slowdown"
	desc = "Allows you to move slower on average than baseline."
	cost = -3
	var_changes = list("slowdown" = 0.5)

/datum/trait/negative/speed_slow_plus
	name = "Slowdown, Major"
	desc = "Allows you to move MUCH slower on average than baseline."
	cost = -5
	var_changes = list("slowdown" = 1.0)

/datum/trait/negative/weakling
	name = "Weakling"
	desc = "Causes heavy equipment to slow you down more when carried."
	cost = -1
	var_changes = list("item_slowdown_mod" = 1.5)

/datum/trait/negative/weakling_plus
	name = "Weakling, Major"
	desc = "Allows you to carry heavy equipment with much more slowdown."
	cost = -2
	var_changes = list("item_slowdown_mod" = 2.0)

/datum/trait/negative/endurance_low
	name = "Low Endurance"
	desc = "Reduces your maximum total hitpoints to 75."
	cost = -2
	var_changes = list("total_health" = 75)

/datum/trait/negative/endurance_low/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.setMaxHealth(S.total_health)

/datum/trait/negative/endurance_very_low
	name = "Low Endurance, Major"
	desc = "Reduces your maximum total hitpoints to 50."
	cost = -3 //Teshari HP. This makes the person a lot more suseptable to getting stunned, killed, etc.
	var_changes = list("total_health" = 50)

/datum/trait/negative/endurance_very_low/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.setMaxHealth(S.total_health)

/datum/trait/negative/minor_brute_weak
	name = "Brute Weakness, Minor"
	desc = "Increases damage from brute damage sources by 15%"
	cost = -1
	var_changes = list("brute_mod" = 1.15)

/datum/trait/negative/brute_weak
	name = "Brute Weakness"
	desc = "Increases damage from brute damage sources by 20%"
	cost = -2
	var_changes = list("brute_mod" = 1.2)

/datum/trait/negative/brute_weak_plus
	name = "Brute Weakness, Major"
	desc = "Increases damage from brute damage sources by 50%"
	cost = -3
	var_changes = list("brute_mod" = 1.5)

/datum/trait/negative/minor_burn_weak
	name = "Burn Weakness, Minor"
	desc = "Increases damage from burn damage sources by 15%"
	cost = -1
	var_changes = list("burn_mod" = 1.15)

/datum/trait/negative/burn_weak
	name = "Burn Weakness"
	desc = "Increases damage from burn damage sources by 20%"
	cost = -2
	var_changes = list("burn_mod" = 1.2)

/datum/trait/negative/burn_weak_plus
	name = "Burn Weakness, Major"
	desc = "Increases damage from burn damage sources by 50%"
	cost = -3
	var_changes = list("burn_mod" = 1.5)

//YW ADDITIONS START
/datum/trait/negative/reduced_biocompat
	name = "Reduced Biocompatibility"
	desc = "For whatever reason, you're one of the unlucky few who don't get as much benefit from modern-day chemicals. Remember to note this down in your medical records!"
	cost = -1
	var_changes = list("chem_strength_heal" = 0.8)

/datum/trait/negative/sensitive_biochem
	name = "Sensitive Biochemistry"
	desc = "Your biochemistry is a little delicate, rendering you more susceptible to both deadly toxins and the more subtle ones. You'll probably want to list this in your medical records, and perhaps in your exploitable info as well."
	cost = -1
	var_changes = list("chem_strength_tox" = 1.25)

/datum/trait/negative/alcohol_intolerance_advanced
	name = "Liver of Air"
	desc = "The only way you can hold a drink is if it's in your own two hands, and even then you'd best not inhale too deeply near it. Drinks hit thrice as hard. You may wish to note this down in your medical records, and perhaps your exploitable info as well."
	cost = -1
	var_changes = list("alcohol_mod" = 3)
	
/datum/trait/negative/pain_intolerance_basic
	name = "Pain Intolerant"
	desc = "You are frail and sensitive to pain. You experience 25% more pain from all sources." 
	cost = -1
	var_changes = list("pain_mod" = 1.25)

//CHOMPEdit Begin
/datum/trait/negative/pain_intolerance_advanced
	name = "High Pain Intolerance"
	desc = "You are highly sensitive to all sources of pain, and experience 100% more pain."
	cost = -2
	var_changes = list("pain_mod" = 2) //most things should down you in 1 or 2 hits
//CHOMPEdit end
//YW ADDITIONS END

/datum/trait/negative/conductive
	name = "Conductive"
	desc = "Increases your susceptibility to electric shocks by 75%"
	cost = -1 //CHOMPEdit What the fuck this is not worth 2 points.
	var_changes = list("siemens_coefficient" = 1.75) //This makes you a lot weaker to tasers.

/*/datum/trait/negative/conductive_plus //CHOMP Removal No we are not giving people a free 3 points with this trait.
	name = "Conductive, Major"
	desc = "Increases your susceptibility to electric shocks by 100%"
	cost = -3 //CHOMPEdit
	var_changes = list("siemens_coefficient" = 2.0)*/ //This makes you extremely weak to tasers.

/datum/trait/negative/haemophilia
	name = "Haemophilia - Organics only"
	desc = "When you bleed, you bleed a LOT."
	cost = -2
	var_changes = list("bloodloss_rate" = 2)
	can_take = ORGANICS

/datum/trait/negative/hollow
	name = "Hollow Bones/Aluminum Alloy"
	desc = "Your bones and robot limbs are much easier to break."
	cost = -3 // increased due to medical intervention needed.

/datum/trait/negative/hollow/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	for(var/obj/item/organ/external/O in H.organs)
		O.min_broken_damage *= 0.5
		O.min_bruised_damage *= 0.5

/datum/trait/negative/lightweight
	name = "Lightweight"
	desc = "Your light weight and poor balance make you very susceptible to unhelpful bumping. Think of it like a bowling ball versus a pin. (STOP TAKING THIS AS SECURITY! We're MRP, so expect to lose your junk immediately, especially in events. - Love, Admins)" //CHOMP Edit btw
	cost = -1 //CHOMPEdit Another source of free points. Being on the ground for a few seconds is not worth 2 points.
	var_changes = list("lightweight" = 1)

// YW Addition
/datum/trait/negative/light_sensitivity
	name = "Photosensitivity"
	desc = "You have trouble dealing with sudden flashes of light, taking some time for you to recover. The effects of flashes from cameras and security equipment leaves you stunned for some time."
	cost = -1
	var_changes = list("flash_mod" = 1.5)

/datum/trait/negative/light_sensitivity_plus
	name = "Extreme Photosensitivity"
	desc = "You have trouble dealing with sudden flashes of light, taking quite a long time for you to be able to recover. The effects of flashes from cameras and security equipment leave you stunned for some time."
	cost = -2
	var_changes = list("flash_mod" = 2.0)


/datum/trait/negative/haemophilia
	name = "Haemophilia"
	desc = "Some say that when it rains, it pours.  Unfortunately, this is also true for yourself if you get cut. You bleed much faster than average"
	cost = -3

/datum/trait/negative/haemophilia/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.add_modifier(/datum/modifier/trait/haemophilia)
// YW Addition End

/datum/trait/negative/neural_hypersensitivity
	name = "Neural Hypersensitivity"
	desc = "Your nerves are particularly sensitive to physical changes, leading to experiencing twice the intensity of pain and pleasure alike. Doubles traumatic shock."
	cost = -1
	var_changes = list("trauma_mod" = 2)
	can_take = ORGANICS

/datum/trait/negative/breathes
	cost = -2
	can_take = ORGANICS

/datum/trait/negative/breathes/phoron
	name = "Phoron Breather"
	desc = "You breathe phoron instead of oxygen (which is poisonous to you), much like a Vox."
	var_changes = list("breath_type" = "phoron", "poison_type" = "oxygen")

/datum/trait/negative/breathes/nitrogen
	name = "Nitrogen Breather"
	desc = "You breathe nitrogen instead of oxygen (which is poisonous to you). Incidentally, phoron isn't poisonous to breathe to you."
	var_changes = list("breath_type" = "nitrogen", "poison_type" = "oxygen")
