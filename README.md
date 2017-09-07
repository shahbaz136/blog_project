#Steps for run project

	1. crate any directory using command:
		mkdir myprojdir

	2. create virtual environment using command:
		virtualenv env

	3. Activate environment:
		source env/bin/activate

	4. Clone the repo using command:
		git clone git clone https://github.com/shahbaz136/blog_project.git

	5. change directory
			cd blog_project	

	6. create "variables.env" in root directory and put value of following fileds:
		ENGINE=django.db.backends.postgresql
		DB_NAME=
		DB_USER=
		DB_PASSWORD=
		DB_HOST=127.0.0.1
		DB_PORT=5432

	7. install requiremenets.txt
		pip install -r requirements.txt

	8. Run project using command:
		python manage.py runserver 

-----------------------------------------------------------------------------------------
Now, Obtain the Credentials from Google....
		
		1. You need a Google Account to access the "Google Developers Console", request an API key, and
			register your application.
			(link = "https://console.developers.google.com")

		2. Create a project in the "Google Developers Console" and Create API keys and  authorization  
		   credentials such as client_id, client_secrets.
			 
			After that SET Authorized redirect URIs.
		    (we set Authorized redirect URIs = "http://127.0.0.1:8000/accounts/google/login/callback/")

		    #Download the Oauth-credential file after click "DOWNLOAD JSON" on credential page in API console
		     (file = client_secret.json) 

			
		3.	Open the API Library in the "Google Developers Console".
			select a project or create a new one. In the list of APIs, "Enable"  Google+ API.

---------------------------------------------------------------------------------------------
For Restore the DATABASE from dump_database file using following command

	 if USER is postgres:
     	pg_restore -d <DB_NAME>  < <DB_DUMP_FILE>

     if other USER:
        pg_restore -d <DB_NAME> -U <USERNAME> < <DB_DUMP_FILE>
​​



------------------------------------------------------------------------------------------
Now, For control admin panel, create a superuser using following command
		python manage.py createsuperuser

	Visit your admin panel (http://127.0.0.1:8000/admin) and follow these steps:

		1. Add a Site for your domain
			DOMAIN_NAME= localhost:8000
			DISPLAY_NAME= blog

		2. Fill the OAuth app credentials obtained from the Google in "Social applications" section 

				(PATH= Home\Social Accounts\Social applications)

				PROVIDER= Google
				CLIENT_ID= ""
				SECRET_key= ""
				KEY=""
				SITES= "localhost:8000"




------------------------------------------------------------------------------------------------
#For testing project 

	URL for admin panel:
		http://127.0.0.1:8000/admin

	URL for all Articles:
		http://127.0.0.1:8000/blog

	URL for login with Google
		http://127.0.0.1:8000/accounts/login

	URL for logout with Google
		http://127.0.0.1:8000/accounts/logout




