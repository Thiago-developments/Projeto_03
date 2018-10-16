package br.com.fatecpg.web;

import java.util.ArrayList;

public class Db {
    private static final ArrayList<cadastro_pessoa> pessoa = new ArrayList<>();
     private static final ArrayList<cadastro_empresa> empresa = new ArrayList<>();
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
     public static ArrayList<cadastro_empresa> getDadosem(){
        if (empresa.isEmpty()){
            cadastro_empresa e1 = new cadastro_empresa();
            e1.setDadosem("Microsoft","Microsoft Corporation","3875024013012","(11)98899-3317", "www.microsoft.com");
            empresa.add(e1);
           
            cadastro_empresa e2 = new cadastro_empresa();
            e2.setDadosem("Samsung","Samsung Electronics Co. Ltd","4556789131455","(11)99756-7186", "www.samsung.com");
            empresa.add(e2);
            
            cadastro_empresa e3 = new cadastro_empresa();
            e3.setDadosem("IBM","International Business Machines Corporation","579876543134","(11)99656-3344", "www.ibm.com");
            empresa.add(e3);
        }
        return empresa;
    }
}    