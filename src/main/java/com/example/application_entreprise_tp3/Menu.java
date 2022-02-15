package com.example.application_entreprise_tp3;

import java.util.ArrayList;
import java.util.List;

public class Menu {
    private List<String> entrees, plats, desserts;

    public Menu() {

        entrees = new ArrayList<String>();
        plats = new ArrayList<String>();
        desserts = new ArrayList<String>();

        alimentation();

    }

    public List<String> getEntrees() {
        return entrees;
    }

    public void setEntrees(List<String> entrees) {
        this.entrees = entrees;
    }

    public List<String> getPlats() {
        return plats;
    }

    public void setPlats(List<String> plats) {
        this.plats = plats;
    }

    public List<String> getDesserts() {
        return desserts;
    }

    public void setDesserts(List<String> desserts) {
        this.desserts = desserts;
    }

    private void alimentation() {

        //alimentation de la list des entrées
        entrees.add("Salade Césare");
        entrees.add("Nois de St Jaques");
        entrees.add("Fois Gras");

        //alimentation de la liste des plates$
        plats.add("Risto");
        plats.add("Pizza 4 fromages");
        plats.add("Pattes aux pesto");

        //alimentation de la liste des desserts
        desserts.add("Coupe de glace");
        desserts.add("Tarte au citron");
        desserts.add("Salade de fruits");



    }
}
