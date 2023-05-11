# Repo with tool to render new images for CompuCell3D simulation

This repo contains a python script "simScansRenderer.py" that can use a new 'screenshot.json' file to generate new images for each simulation in a parameter scan. 

"simRenderer1.bat" activates the cc3d environment and then runs a specific python script, entered as an argument. This file is located within the CC3D installation folder, along with the other bat files. 

"cc3d_render/" is one of the examples from the CompuCell3D/Demos folder. The "cc3d_render/cc3d_render.py" file has been edited so as to run the simulation, and then render images using two different json files. In addition, each of the json files are only specifying settings for images taken at the 2D level.
Running this simulation shows that images rendered using either of the json files ignores the resolution("Size") specified within each of them.
