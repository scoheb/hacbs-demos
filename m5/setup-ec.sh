curl -s https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/main/config/rbac/enterprisecontractpolicy_viewer_role.yaml | oc apply -f -
oc policy add-role-to-user enterprisecontractpolicy-viewer-role -z pipeline
oc -n demo secrets link pipeline redhat-appstudio-registry-pull-secret --for=pull,mount
