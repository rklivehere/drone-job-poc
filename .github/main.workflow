workflow "schedule" {
  resolves = ["GitHub Action for Docker"]
  on = "schedule(*/1 * * * *)"
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "run node node -e 'console.log(\"oi\")'"
}

workflow "deployment" {
  resolves = ["Node "]
  on = "deployment"
}

action "Node " {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "run node node -e 'console.log(\"oi\")'"
}

workflow "check" {
  on = "check_run"
  resolves = ["GitHub Action for Docker-1"]
}

action "GitHub Action for Docker-1" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "run node node -e 'console.log(\"oi\")'"
}
