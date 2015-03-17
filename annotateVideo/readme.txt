# Program functionality
annotateVideo.cpp <path to videoclip> <naming from #> crops video sequences in a fitting aspect ratio and stores every annotated frame in the “outputAnnotations” folder. Naming of frames begins with the number given as argument and increments as frames are annotated. Annotation of a frame is done by beginning with “left click” in the upper left corner of the area that is to be annotated, finishing with a “right click” in the lower right corner of the area. If multiple objects exists in a single frame, “s” temporarily saves the previously annotated area, allowing for annotation of another object. This can be repeated for as many objects that may exist in the frame, as long as each annotation is followed by pressing “s”. When every object in a frame have been annotated, the data is written to a file by pressing “f”. In order to proceed to the next frame “d” must be pressed. Any erroneous annotations can be ignored by pressing “i” before pressing “s” or “d”.

# Use
call build script “./build.sh”

“chmod +x build.sh” if necessary

execute “./annotateVideo <path to videoclip> <naming from #>”

outputs annotated frames to ../outputAnnotations along with the a text file with annotation coordinates


