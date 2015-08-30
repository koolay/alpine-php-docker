
server {

  listen 8080;

  server_name example.com;

  # Path for static files
  root /app/www/example;

  #Specify a charset
  charset utf-8;

  # Custom 404 page
  error_page 404 /404.html;

  # Include the basic h5bp config set
  include h5bp/basic.conf;
}
