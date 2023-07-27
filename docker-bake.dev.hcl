group "default" {
  targets = ["db", "webapp-dev"]
}

target "db" {
  dockerfile = "Dockerfile.db"
  tags = ["xianpengshen/docker-buildx-bake-demo:db"]
}

target "webapp-dev" {
  dockerfile = "Dockerfile.webapp"
  tags = ["xianpengshen/docker-buildx-bake-demo:webapp"]
}

target "webapp-release" {
  inherits = ["webapp-dev"]
  platforms = ["linux/amd64", "linux/arm64"]
}
