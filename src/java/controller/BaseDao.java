package controller;
import com.mongodb.client.MongoDatabase;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author akash
 */
public class BaseDao {
    
    public static void main (String args[]){
        MongoClient mongo = new MongoClient("139.59.58.64",27017);
        
       /* MongoCredential credential;
        credential = MongoCredential.createCredential(userName, database, password);
        "password".toCharArray();*/
        System.out.println("Connected to the database successfully");
       
        
        MongoDatabase database= mongo.getDatabase("mydb");
        //System.out.println("Credentials ::" + credential);
        
        
        
    }
    
}
