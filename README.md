
# Introduction

- This is the simplest method to deploy shiny apps as a standalone desktop app (Windows OS).

- The resulting standalone app is notably smaller than alternative methods like Electron.

# Prerequisite

- Your shiny app is written as an R package. (If you plan to do so, I suggest following the [golem](https://cran.r-project.org/web/packages/golem/index.html) framework)

# Setup

### 1. Download this repository

This repository serves as a template for the  desktop-deployed Shiny apps.

### 2. Install R

install the required R version within this repository, and rename the R containning folder to **`R`**.

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

### 5. Test the app

Double clicking **`run.bat`** should run your Shiny app in the web browser.

### 6. Create installer executable

- Install [Inno Setup](https://jrsoftware.org/isdl.php)

- Open the **`setup.iss`** with Inno Setup software. You will need to generate a new AppId and change the name, version, etc. Note you need to have two "{{" in front of the AppID. (See figure below).

![Unknown](https://github.com/YonghuiDong/Shiny_Desktop_App/assets/22663189/0306c338-24a0-45dc-aec2-d1116995c840)

- (optional) If you want to change the desktop icon, please replace your own icon with the **`logo.ico`** icon file (use the same name). You can use this [website](https://convertico.com) to convert your icon image into ico format.

- Click the "Run" button to generate your executable desktop Shiny app.

## Acknowledgements

This repository has been modified using Derry Leng's [initial version](https://github.com/derryleng/Shiny_Desktop_App), and his original license is retained alongside this repository.
