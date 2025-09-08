

 # GRANAR - Summer school 2025
 # Material for the day 2 - Organ scale water flow in roots

library(granar)


#### LOAD - MODIFY - RUN - VISU #### 

# Load generic parameter file for GRANAR
params <- read_param_xml(path = "~/GitHub/granar/inst/extdata/root_monocot_simpl.xml")

  # Xylem parameter
  params$value[params$type == "max_size" & params$name == "xylem"] = 0.05
  params$value[params$type == "n_files" & params$name == "xylem"] = 5
  
  # Aerenchyma
  params$value[params$type == "proportion" & params$name == "aerenchyma"] = 0
  params$value[params$type == "n_files" & params$name == "aerenchyma"] = 2
  
  # Cortex
  params$value[params$type == "cell_diameter" & params$name == "cortex"] = 0.04
  params$value[params$type == "n_layers" & params$name == "xylem"] = 6

# RUN
root_sim <- create_anatomy(parameters = params)

# VISU
plot_anatomy(root_sim)



# Load generic parameter file for GRANAR
params <- read_param_xml(path = "~/GitHub/granar/inst/extdata/root_monocot.xml")
sim = create_anatomy(parameters = params)
# To visualize the anatomy and the scenario that are going to be tested.
# you can use the plot_anatomy function.
plot_anatomy(sim, col = "segment", apo_bar = 1)
plot_anatomy(sim, col = "segment", apo_bar = 2)
plot_anatomy(sim, col = "segment", apo_bar = 3)


write_anatomy_xml(sim, "MECHA/cellsetdata/current_root.xml")
aer_in_geom_xml(sim, "MECHA/Projects/granar/in/Maize_Geometry.xml")


Flux1 <- ApoSymp("MECHA/Projects/granar/out/Root/Project_Test/baseline/Macro_prop_1,0.txt")
Flux2 <- ApoSymp("MECHA/Projects/granar/out/Root/Project_Test/baseline/Macro_prop_2,1.txt")
Flux3 <- ApoSymp("MECHA/Projects/granar/out/Root/Project_Test/baseline/Macro_prop_4,2.txt")

plot_water_flux(Flux1, apobar = 1)
plot_water_flux(Flux2, apobar = 2)
plot_water_flux(Flux3, apobar = 3)
