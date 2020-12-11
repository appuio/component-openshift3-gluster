local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.openshift3_gluster;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('openshift3-gluster', params.namespace);

{
  'openshift3-gluster': app,
}
