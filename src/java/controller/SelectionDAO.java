/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.MongoClient;
import org.bson.Document;
import java.util.*;
import com.mongodb.client.FindIterable;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author akash
 */
public class SelectionDAO extends BaseDao{
    
    BaseDao bdao;
    ResultSet rs;
    public static void main(String args[])
    {
         MongoClient mongo = new MongoClient("139.59.58.64",27017);
        
       /* MongoCredential credential;
        credential = MongoCredential.createCredential(userName, database, password);
        "password".toCharArray();*/
        System.out.println("Connected to the database successfully");
       
        
        MongoDatabase database= mongo.getDatabase("mydb");
        MongoCollection<Document> collection = database.getCollection("users");
        System.out.println("Collected successfully");
        
        FindIterable<Document> iterDoc = collection.find();
        
        int i=1;
        Iterator it = iterDoc.iterator();
        
        User user = new User();
        
        while(it.hasNext())
        {
            
            System.out.println(it.next());
           
        }
       
    }

    public SelectionDAO() {
        this.bdao = new BaseDao();
    }
}
