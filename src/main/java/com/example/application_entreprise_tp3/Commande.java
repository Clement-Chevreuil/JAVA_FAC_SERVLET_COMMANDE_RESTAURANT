package com.example.application_entreprise_tp3;

import java.util.List;

public class Commande {

    private String client;
    private List<String> entree, plat, dessert;

    public Commande(){}

    public String getClient() {return client;}
    public List<String> getEntree() {return entree;}
    public List<String> getPlat() {return plat;}
    public List<String> getDessert() {return dessert;}
    public void setClient(String client) {this.client = client;}
    public void setEntree(List<String> entree) {this.entree = entree;}
    public void setPlat(List<String> plat) {this.plat = plat;}
    public void setDessert(List<String> dessert) {this.dessert = dessert;}

    @Override
    public String toString() {
        return  client ;
    }

}
