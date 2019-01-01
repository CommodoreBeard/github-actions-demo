workflow "New workflow" {
  on = "push"
  resolves = ["unit tests"]
}

action "unit tests" {
  uses = "actions/npm@e7aaefe"
  args = "npm test"
  runs = "npm install"
}
