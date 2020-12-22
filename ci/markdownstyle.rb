################################################################################
# Style file for markdownlint.
#
# https://github.com/markdownlint/markdownlint/blob/master/docs/configuration.md
#
# This file is referenced by the project `.mdlrc`.
################################################################################

#===============================================================================
# Start with all built-in rules.
# https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md
all

#===============================================================================
# Override default parameters for some built-in rules.
# https://github.com/markdownlint/markdownlint/blob/master/docs/creating_styles.md#parameters

# Ignore line length in code blocks.
rule 'MD013', code_blocks: false, line_length: 200

#===============================================================================
# Exclude the rules I disagree with.

# In the yaml section of an .md file we are
exclude_rule 'MD032' # Lists should be surrounded by blank lines

# We want to use web images and inline them with html.
exclude_rule 'MD033' # Inline HTM

# If a page is printed, it helps if the URL is viewable.
exclude_rule 'MD034' # Bare URL used

# For a dbt project, the markdown files for docs don't need titles
exclude_rule 'MD041'  # First line in file should be a top level header

# For the PR Template this is not applicable
exclude_rule 'MD002'  # First header should be a top level header
exclude_rule 'MD014'  # Dollar signs used before commands without showing output
