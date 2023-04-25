# This project is a CI/CD POC using jenkins for the static website project below
# Core project source repository
https://github.com/diranetafen/static-website-example.git
# Steps
Build Jenkins pipeline item and deploy to staging
# Use Jenkins feature
- Docker pipeline : use docker agent to build your project image
- GitHub Integration Plugin : use github webhook feature to trigger your build
- Global Slack Notifier Plugin : set your notification channel, stay tuned to your pipeline
- GitHub Groovy Libraries: factorize your Jenkinsfile (see the repo and factorize your Jenkinsfile https://github.com/Matsiaze/shared-library.git
- Embeddable Build Status Plugin : markdown your readme
- Blue Ocean : improve Jenkins user experience
- Role-based Authorization Strategy: securise your project pipeline with restricted access
#
[![Build Status](http://192.168.56.9:8080/job/static-website-pipeline/badge/icon)](http://192.168.56.9:8080/job/static-website-pipeline/)
# Discover ngrok
Create a tunnel to trigger github webhook in cas your Jenkins is deployed remotely 
#
https://www.npmjs.com/package/ngrok
