

import os

from cc3d.CompuCellSetup.CC3DCaller import CC3DCaller
from cc3d.CompuCellSetup.CC3DRenderer import CC3DRenderer, standard_lds_file, standard_screenshot_file


simScanPaths = [] # list of absolute paths for each scan in parameter scan folder
modelName = ''
newScreenshotJSONPath = ''


for scanPath in simScanPaths:
    cc3d_sim_fname = os.path.join(scanPath, modelName, modelName)

    # Get the absolute path to the simulation directory, lattice data summary file and screenshot json
    simDir= os.path.join(scanPath, 'Simulation')  # where to find the CC3D model specification
    lds_file = standard_lds_file(os.path.join(scanPath, modelName)) # lattice data summary file
    screenshot_spec = newScreenshotJSONPath  # screenshot json
    # Render results and store the renders in a specific location
    renderDirAbs = os.path.join(scanPath, modelName) # Storing here

    cc3d_renderer = CC3DRenderer(
        lds_file=lds_file,
        screenshot_spec=screenshot_spec,
        output_dir=renderDirAbs
    )
    cc3d_renderer.initialize()  # Initialize CC3D rendering backend; we can do manipulations before and after this call
    cc3d_renderer.export_all()  # Render and export all available results
                    
    