# Deploying Shiny as Windows Desktop Application

- This repository provides the required files and instructions on deploying R Shiny web application(s) as an installable and standalone local Windows desktop application.

- The benefits of this deployment method is **the minimal software requirement and IT knowledge** necessary to run a Shiny application, making Shiny apps more accessible to users from all technical levels.

- This repository is specially for Shiny app that is distributed as R package.

# Setup

## 1. Download this repository

This repository is a template of the base directory of desktop deployed Shiny app.

## 2. Install R

install the required R version within this repository and rename the folder to **`R`**

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

### 4. Test run the app

Double clicking **`run.bat`** should now run the Shiny app in either the default browser or packaged web browser.

Closing the browser window should terminate the Shiny app and close the command prompt window.


### 5. Create installer executable

Installers allow for easy distribution and installation of a Shiny desktop app. 

See setup.iss for an example compilation script using [Inno Setup](https://www.jrsoftware.org/isinfo.php). You will need to generate a new AppId and change the name, version, etc.

![Unknown](https://github.com/YonghuiDong/Shiny_Desktop_App/assets/22663189/0306c338-24a0-45dc-aec2-d1116995c840)


## Acknowledgements

Inspired by Lee Pang (he also has a repo on this topic [here](https://github.com/wleepang/DesktopDeployR)): https://www.r-bloggers.com/deploying-desktop-apps-with-r/
