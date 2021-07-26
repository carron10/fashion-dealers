package nust;


import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Muleya
 */
public class db_connection {



    public static void main(String args[]) throws ClassNotFoundException, URISyntaxException {
          
            String r = "CREATE TABLE USERS(\n"
                    + "ID  SERIAL,\n"
                    + "user_name  varchar(20) NOT NULL,\n"
                    + "first_name  varchar(20),\n"
                    + "last_name varchar(20),\n"
                    + "email  varchar(50)   NOT NULL,\n"
                    + "password  varchar(255)   NOT NULL,\n"
                    + "timestamp timestamp default current_timestamp,\n"
                    + "user_role varchar(20) default 'user',\n"
                    + "user_bio varchar(300),\n"
                    + "hash_password varchar(255) not null,\n"
                    + "user_piture varchar(50),\n"
                    + "status   tinyint(1) not null default '0',\n"
                    + "PRIMARY KEY(email,user_name)\n"
                    + ");";
         

    }

}
/*

CREATE TABLE USERS(
ID  SERIAL not null index,
user_name  varchar(20) not null,
first-name  varchar(20),
last_name varchar(20),
email  varchar(50)   NOT NULL,
password  varchar(255)   NOT NULL,
timestamp timestamp default current_timestamp index,
user_role varchar(20),
user_bio varchar(300),
hash_password varchar(255) not null,
user_piture varchar(50),
status   tinyint(1) not null default '0',
PRIMARY KEY(email,user_name)
);
 */
