# cloud-wp-t5

## Tugas

- Make dockerfile consist of 4 services on a same network
  - nginx (proxy)
  - wordpress (wp)
  - mariadb/mysql/postgresql (db)
  - phpmyadmin (pma)

- Nginx is configured as http proxy
  - All request to / on port 80 routed to wordpress running on port 80
  - All request to /pma routed to phpmyadmin running on port 80
- Dockerfile must be saved on AWS S3/GitHub/GitLab
- Make a bash script to install docker and docker-compose
- and run the dockerfile during EC2 instance creation
  - Credentials
    - a.DB Username/Password: cloud/cloud-pass
    - b.DB Name: cloud-db
NOTE: Credentials MUST NOT be hard-coded in Dockerfile. Use Parameter Store or ENV file


