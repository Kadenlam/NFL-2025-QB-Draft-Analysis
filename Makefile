# set up file paths
NOTEBOOK := project folder/Source code.ipynb
OUTPUT_NOTEBOOK := CodeRemade.ipynb

# Default target
all: run_notebook

# Run notebook and export as executed version 
run_notebook:
	jupyter nbconvert --to notebook --execute "$(NOTEBOOK)" --output "$(OUTPUT_NOTEBOOK)"

#declare all variables that are not files
.PHONY: all run_notebook