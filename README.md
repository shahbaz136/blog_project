1. crate any directory using command:
	mkdir myprojdir

2. create virtual environment using command:
	virtualenv env

3. Activate environment:
	source env/bin/activate

4. Clone the repo using command:
	git clone https://itscoolak@bitbucket.org/kritisoftwaresolutions/social_media_services.git

5. create "variables.env" in root directory and put value of following fileds:
	ENGINE=django.db.backends.postgresql
	DB_NAME=
	DB_USER=
	DB_PASSWORD=
	DB_HOST=127.0.0.1
	DB_PORT=5432

6. install requiremenets.txt
	pip install -r requirements.txt

7. Run project using command:
	python manage.py runserver 