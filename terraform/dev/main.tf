resource "aws_amplify_app" "moments-app" {
  name       = "moments-app"
  repository = "https://github.com/moments-tech/frontend"


  # The default rewrites and redirects added by the Amplify Console.
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  environment_variables = {
    ENV = "dev"
  }
}