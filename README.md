# cloud-wp-t5

1.Make dockerfile consist of 4 services on a same network
  a.nginx (proxy)
  b.wordpress (wp)
  c.mariadb/mysql/postgresql (db)
  d.phpmyadmin (pma)
2.Nginx is configured as http proxy
  a.All request to / on port 80 routed to wordpress running on port 80
  b.All request to /pma routed to phpmyadmin running on port 80
3.Dockerfile must be saved on AWS S3/GitHub/GitLab
4.Make a bash script to install docker and docker-compose
5.and run the dockerfile during EC2 instance creation
  Credentials
    a.DB Username/Password: cloud/cloud-pass
    b.DB Name: cloud-db
NOTE: Credentials MUST NOT be hard-coded in Dockerfile. Use Parameter Store or ENV file
