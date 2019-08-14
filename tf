#!/bin/bash
USER=`whoami`

[[ -e ~/.terraform-version ]] && GLOBAL_VERS=`head -1 ~/.terraform-version` || GLOBAL_VERS=`terraform --version|head -1|awk '{print $NF}'|sed 's/v//'`

if [[ -e .terraform-version ]]; then
  VERS=`head -1 .terraform-version`
  if [[  -e "/Users/$USER/libexec/terraform_${VERS}_darwin_amd64/terraform" ]]; then
    echo "Terraform version v$VERS (found in .terraform-version)."
  else
    echo "Terraform version v$VERS (found in .terraform-version) not found, using global version v$GLOBAL_VERS."
    VERS=$GLOBAL_VERS
  fi
else
  VERS=$GLOBAL_VERS
  echo "Terraform version v$VERS."
fi

/Users/$USER/libexec/terraform_${VERS}_darwin_amd64/terraform $*
