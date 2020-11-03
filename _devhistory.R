# Dev history

usethis::use_build_ignore("_devhistory.R") # Add this file to the .Rbuildignore to do not include it during comilation of final package

usethis::use_git_ignore() # To add files to the .gitignore and do not keep track of these files

usethis::use_git(message = ":tada: 1st commit")  # Run 1st commit and start the verisonning. Restart R to get the Git tab displayed

usethis::edit_file("./DESCRIPTION") # Edit metadata

# Commit
usethis::use_git(message = ":bulb: Edit package metadata")

usethis::use_mit_license(name = "Mael Dore") # Add a license to the package

usethis::use_package_doc()# Add the home help page for the documentation of the package
# Include metadata and index of fonctions

# Generate documentation from the entire working project
devtools::document()

# Generate a R script to build a function in it (or a set of funtion)
usethis::use_r("ma_function")

# Load all function in the working project and put them in the memory = load all function from source without installing the whole package
# Used to try quickly changes in the functions when debugging
devtools::load_all()

ma_function # Display its source code

# Load manually the function
source("./R/ma_function.R")
ma_function # Display its source code

# Generate doc again for all functions => files .Rd in the folder 'man'
devtools::document()

# Try to install the package and check if every thing run properly
devtools::check()


# Install our own package
devtools::install()

ma_function(c(1,2,NA))

?ma_function

# Add a dependancy in the description of the package
usethis::use_package("stats", type = "Depends") # Pour l'installer aussi. NE PAS FAIRE CA !! Sauf si on construit une extension d'un autre package
usethis::use_package("stats", type = "Imports") # Mieux car, ça se contente d'aller chercher juste la fonction necessaire

# Commit
usethis::use_git(message = ":boom: Yeah")

# Generate personal GitHub PATH (to do only once)
# usethis::browse_github_token()
# usethis::edit_r_environ() # Copy-paste the GitHUb Pat in the .Renv to make it able to control GitHub distantly


# Create repo on Github from local ("push")
usethis::use_github(usethis.protocol = "https")

### Testing our functions!
# Implement test folder and architecture in the package
usethis::use_testthat()

# Commit
usethis::use_git(message = ":koala: Setup testthat")

# Create a script to test the function
usethis::use_test("ma_fonction")

# Rebuild documentation
devtools::document()

# Run tests for all functions
devtools::test()


library(testthat)
library(newpackage)
test_check("newpackage")

usethis::use_git(message = ":panda: Crash test")


?newpackage::ma_function()
