disease(coffee_rust).
disease(coffee_berry).
disease(coffee_wilt).
disease(coffee_bacterial).
disease(coffee_brown_eye_spot).
/*Facts*/
symptom(brown_spot, yellow_leaves).
symptom(brown_spot, brown_spots_on_leaves).
symptom(brown_spot, leaf_drop).
causes(brown_spot, fungus_infection).
prevention(brown_spot, proper_ventilation).
prevention(brown_spot, regular_pruning).
prevention(brown_spot, fungicide_application).
/*facts*/
symptom(coffee_rust, yellow_spots_on_leaves).
symptom(coffee_rust, premature_fruit_drop).
symptom(coffee_rust, defoliation).
causes(coffee_rust, fungus_infection).
prevention(coffee_rust, regular_field_inspection).
prevention(coffee_rust, proper_shading).
prevention(coffee_rust, fungicide_spraying).
/* Facts */
berry_color(red).
berry_color(green).
berry_color(yellow).
berry_size(small).
berry_size(medium).
berry_size(large).
berry_type(arabica).
berry_type(robusta).
/* Facts */
symptom(coffee_wilt, wilting_leaves).
symptom(coffee_wilt, discoloration_of_leaves).
symptom(coffee_wilt, dieback_of_branches).
causes(coffee_wilt, fusarium_xylarioides).
prevention(coffee_wilt, soil_fumigation).
prevention(coffee_wilt, planting_resistant_varieties).
prevention(coffee_wilt, strict_sanitation_practices).
/* Facts */
symptom(coffee_bacterial_blight, wilting_of_leaves).
symptom(coffee_bacterial_blight, water-soaked lesions).
symptom(coffee_bacterial_blight, leaf necrosis).
causes(coffee_bacterial_blight, pseudomonas_syringae).
prevention(coffee_bacterial_blight, copper-based_fungicides).
prevention(coffee_bacterial_blight, pruning_affected_areas).
prevention(coffee_bacterial_blight, crop_rotation).
/* Rules */
is_affected_by(Disease, Plant) :- symptom(Disease, Symptom), affects(Symptom, Plant).
affects(Symptom, coffee_plant) :- symptom(_, Symptom).
is_arabica(Berry) :- berry_type(Berry, arabica).
is_robusta(Berry) :- berry_type(Berry, robusta).
is_affected_by(Disease, Plant) :- symptom(Disease, Symptom), affects(Symptom, Plant).
affects(Symptom, coffee_plant) :- symptom(_, Symptom).
is_affected_by(Disease, Plant) :- symptom(Disease, Symptom), affects(Symptom, Plant).
affects(Symptom, coffee_plant) :- symptom(_, Symptom).
