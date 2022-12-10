# -out=do.plan 2>&1 | tee plan.log
plan:
	terraform plan \
        -var "do_token=${DO_PAT}" \
        -var "pvt_key=${HOME}/.ssh/id_rsa" 
	
apply:
	terraform apply \
          -var "do_token=${DO_PAT}" \
          -var "pvt_key=${HOME}/.ssh/do_terraform"
	

destroy:
	terraform destroy \
          -var "do_token=${DO_PAT}" \
          -var "pvt_key=${HOME}/.ssh/do_terraform"
	
	