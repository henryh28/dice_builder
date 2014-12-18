echo Dropping database
call rake db:drop

echo Creating Database
call rake db:create

echo Migrating models
call rake db:migrate

echo Seeding database
call rake db:seed
