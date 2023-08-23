
# Introduction

- This is the simplest method to deploy shiny apps as a standalone desktop app (Windows OS).

- The resulting standalone app is notably smaller than alternative methods like Electron.

# Prerequisite

- Your shiny app is written as an R package. (If you plan to do so, I suggest following the [golem](https://cran.r-project.org/web/packages/golem/index.html) framework)

# Setup

### 1. Download this repository

This repository serves as a template for the  desktop-deployed Shiny apps.

### 2. Install R

install the required R version within this repository, and rename the folder to **`R`**

Inside the **`R`** folder, open **`etc`** and edit **`Rprofile.site`** using a text editor to include the lines:

``` R
.First = function(){
    .libPaths(.Library)
}
```

> This will tell the R portable installation to only use the packages installed in this local directory, to avoid conflicts with other R installations.

### 3. Install R packages

Open R.exe (found in **`R\bin`**) and install your shiny app (e.g., myShinyApp) and its dependencies.

``` R
install.packages("myShinyApp")
```

> If your Shiny package is hosted on platforms like GitHub, Bioconductor, or others, make sure to use the appropriate method to install the package.
> 
> You can verify whether your Shiny app runs smoothly. If you encounter any error messages, you can install the missing dependencies as indicated by the error messages.

### 4. Edit run.R file

This file has only one line, it is the same code when running your shiny app. For instance:

``` R
myShinyApp::run_app(options=list(launch.browser=TRUE))
```

> Remember to add `options=list(launch.browser=TRUE)` so as to allow your web app to be opened in a broswer.

### 5. Test run the app

Double clicking **`run.bat`** should run your Shiny app in the web browser.

### 6. Create installer executable

Installers allow for easy distribution and installation of a Shiny desktop app. 

See setup.iss for an example compilation script using [Inno Setup](https://www.jrsoftware.org/isinfo.php). You will need to generate a new AppId and change the name, version, etc.

![Unknown](https://github.com/YonghuiDong/Shiny_Desktop_App/assets/22663189/0306c338-24a0-45dc-aec2-d1116995c840)


## Acknowledgements

This repository has been modified using Derry Leng's [initial version](https://github.com/derryleng/Shiny_Desktop_App), and his original license is retained alongside this repository.
