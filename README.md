
<h1 align="center">
    📌<a> Taskee </a>
</h1>

![Frame 1 (1)](https://user-images.githubusercontent.com/45527157/133663218-642cd8c3-7e90-4e34-bb42-904848b971ec.png)

 <div align="center">
 <a href="https://github.com/caiovini64/taskee/actions/workflows/automated_test.yml/badge.svg?branch=develop"><img alt="Automated Testing" src="https://github.com/caiovini64/taskee/actions/workflows/automated_test.yml/badge.svg?branch=develop"></a>
  <a href="https://github.com/caiovini64/taskee/actions/workflows/build.yml/badge.svg?branch=main"><img alt="Automated Building" src="https://github.com/caiovini64/taskee/actions/workflows/build.yml/badge.svg?branch=main"></a>
  <img alt="License MIT" src="https://img.shields.io/static/v1?label=license&message=MIT&color=blue">
</div>
 

<h3 align="center">
    Taskee is an App where you will manage and organize your tasks.
</h3>

## 📃 About
  Taskee is a task application developed with SOLID best practices using TDD and automated testing with Github Actions.
 
## ⚙️ Functionalities

- [ ] The user can create tasks
- [ ] The user can read your tasks
- [ ] The user can update your tasks
- [ ] The user can delete your tasks


## 📐 Architecture
  The application's architecture is based on google's Jetpack Architecture proposal for Android development and Clean Architecture. 
  <div>
  <img alt="Architecture flow"  src="https://user-images.githubusercontent.com/45527157/133664770-32b7bd47-6177-4c85-bd77-b9ce59935bc8.png" width="700">
  
 #### Folder Structure
  
``` 

lib/
   data/                            <-- data layer
      cache/                            <-- abstract classes that define cache adapters
      datasources/                      <-- communicates with external data
      models/                           <-- models that contain the methods to manipulate the entity
      repositories/                     <-- treat the data from the datasource and decoupling the presentation
   domain/                          <-- domain layer
      datasources/                      <-- abstract classes that define datasource implementations
      entities/                         <-- enterprise business
      repositories/                     <-- abstract classes that define repositorie implementations
   infra/                           <-- infra layer
      adapters/                         <-- fetch the data from device cache
   main/                            <-- main layer
      factories/                        <-- does the dependency injection of all layers
   presentation/                    <-- presentation layer
      presenters/                       <-- cubit presenters who controls the page 
   ui/                              <-- ui layer
      pages/                            <-- pages and widgets
      
```
 

