workflow "New workflow" {
  resolves = ["GitHub Action for Docker"]
  on = "schedule(*/1 * * * *)"
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "run node node -e 'console.log(\"oi\")'"
}

workflow "New workflow 1" {
  on = "deployment"
  resolves = ["Node "]
}

action "Node " {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "run node node -e 'console.log(\"oi\")'"
}
