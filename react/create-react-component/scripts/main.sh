#!/bin/sh

echo "
=========================================================================================
================================= Create React Component ================================
=========================================================================================
"
read -p "1) Name of the component: (Component)   " component_name; component_name=${component_name:='Component'};
read -p "2) Where do you want to create '${component_name}'? (./src):   " component_dir; component_dir=${component_dir:='./src'};

component_dir=${component_dir%\'};
component_dir=${component_dir%/};
component_dir=${component_dir#\'};

echo $component_dir

# define directories
callers_dir="$PWD"
DIR=$( dirname "${BASH_SOURCE[0]}" )
component_root_dir="$component_dir/$component_name"

# copy templates
cp -r "$DIR/../template/" "$component_root_dir"

#replace placeholders
find $component_root_dir -type f -exec sed -i '' -e "s/COMPONENT_NAME/${component_name}/g" {} \;

#rename files
mv "$component_root_dir/COMPONENT_NAME.tsx" "$component_root_dir/${component_name}.tsx"
mv "$component_root_dir/COMPONENT_NAME.spec.tsx" "$component_root_dir/${component_name}.spec.tsx"

echo "you're all done. Bye Bye!"
exit 0;
