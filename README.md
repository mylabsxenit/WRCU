# WRCU
Web based Remote Control Unit with opensource ThinVNC

1. Purpose
  - Remote control PC when you teach student in the computer labs

2. What you need
  - Small server or PC
    - ubuntu 15.10 server
    - python3
    - django 1.8.1
    - python3-pip
    - python3-crypto
    - mariadb-server
    - python3-mysqldb
    - python3-pymysql 
    - gettext
    
  - Make database xenit2mylabs 
    - user : xenituser
    - password : xenitpass
    
    * if you want to change Database or user etc... open settings.py in xeint folder (xenit_web_source.tar.gz)
    
      DATABASES = {
      'default': {
         'ENGINE': 'django.db.backends.mysql',
         'NAME': 'xenit2mylabs',
         'USER': 'xenituser',
         'PASSWORD': 'xenitpass',
         'HOST': '',
         'POST': '',
        }
      }
    
   - extract xenit_web_source.tar.gz to your user directory
   - put query 
     - DB_table_pc_sys_member.sql
     
   - run xenit
     - run_xenit.sh start # will be start with 9001 port
     
3. Connect Administraton Web manager
  - http://servceip:9001
  
  
