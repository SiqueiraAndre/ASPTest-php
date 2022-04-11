# ASPTest - Desafio PHP - Alter Solutions

> Test project requested by Alter Solutions for PHP job vacancy

## Requisites

Before you start, make sure you have met the following requirements:

* You need docker and docker-compose installed in you computer.

## Starting the project ASPTest

Step 1 - Clone the repository with following command:
```diff 
git clone https://github.com/SiqueiraAndre/ASPTest-php.git
```
Step 2 - Enter in the folder project: `cd ASPTest`

Step 3 - Create the .env file
```diff 
Copy the content in the env.example file to .env file
```

Step 4 - Run command `docker-compose up -d`

Step 5 - Run command to install composer `docker-compose exec app composer install`

Step 6 - Run docker-compose exec app php ./ASP-TEST db:migrate to generate database tables

Step 6 (Optional) - Show commands `docker exec php-app php ./ASP-TEST` or `docker exec php-app php ASP-TEST`


## Commands 
- Create user: `"docker exec php-app php ./ASP-TEST USER:CREATE first_name last_name email age"`
- Create password user: `"docker exec php-app php ./ASP-TEST USER:CREATE-PWD user_id pwd confirm_pwd`

## Unit Tests
```
docker exec php-app composer test tests/CreateUserTest.php
docker exec php-app composer test tests/CreateUserPWDTest.php
```

