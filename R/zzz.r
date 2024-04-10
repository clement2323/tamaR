
### make graphical resources available

bg = readPNG("img/background.png")
bg2 = readPNG("img/background2.png")

icons = list()
for(ics in c("attention","bathroom","food","game",
             "lights","medicine","status","training")){
    icons[[ics]] = readPNG(paste0("img/",ics,".png"))
}

### www repo for we app

.onLoad <- function(libname, pkgname) {
    resources <- system.file("www", package = "tamaR")
    addResourcePath("www", resources)
}