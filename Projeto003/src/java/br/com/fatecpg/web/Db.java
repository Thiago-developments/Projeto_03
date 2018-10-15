package br.com.fatecpg.web;

import java.util.ArrayList;

public class Db {
    private static final ArrayList<cadastro_pessoa> pessoa = new ArrayList<>();
    
    public static ArrayList<cadastro_pessoa> getDados(){
        if (pessoa.isEmpty()){
            cadastro_pessoa p1 = new cadastro_pessoa();
            p1.setDados("Diego","35024013012","diego@forganes","(13)91777-1777");
            pessoa.add(p1);
           
            cadastro_pessoa p2 = new cadastro_pessoa();
            p2.setDados("Nicole","35024013012","nicole@medina","(13)91777-1777");
            pessoa.add(p2);
            
            cadastro_pessoa p3 = new cadastro_pessoa();
            p3.setDados("Thiago","35024013012","thiago@sousa","(13)91777-1777");
            pessoa.add(p3);
        }
        return pessoa;
    }
}