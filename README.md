## Shift-Left DevSecOps with AWS

This GitHub repository contains the code that demonstrates how to use AWS and Lacework to build, secure, test and deploy an NPM application. For more detail, check out the [blog post](TBD).

### CI/CD Pipeline
![pipeline](https://user-images.githubusercontent.com/6440106/162585518-ce3b1b5e-7e55-4b29-a056-51c466a54aaf.png)

### Architecture
![architecture](https://user-images.githubusercontent.com/6440106/162585599-d2325b3c-8cc0-46e2-8211-aee0f938bb2b.png)

# Demo App Local Development

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 10.1.7.

<img width="995" alt="aws-lacework-demo-app" src="https://user-images.githubusercontent.com/6440106/162275308-6c21d13b-8b96-4b31-8b9d-a313eb5fd4cc.png">

## Build and Run Docker Image Locally

```
$ aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws
$ docker build -t demo-app . 
$ docker run -p 443:443 -p 80:80 docker.io/library/demo-app
```

## Development server

Install the angular-cli. Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

