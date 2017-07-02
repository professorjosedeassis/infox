/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;
// importando bibliotecas

import java.sql.*;

/**
 * Sistema OS
 * @author José de Assis
 */
public class ModuloConexao {
    //criando um método responsável por estabelecer
    //uma conexão com o banco

    public static Connection conector() {
        //criando uma variável especial para 
        //estabelecer uma conexão com o banco
        java.sql.Connection conexao = null;
        //carregando o driver correspondente
        //ao banco (não esqueça de importar ele
        // em libraries 
        String driver = "com.mysql.jdbc.Driver";
        //armazenando informações referente ao 
        //banco de dados
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "";
        //estabelecendo a conexão com o banco
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;

        } catch (Exception e) {
            //a linha abaixo serve de apoio para esclarecer o erro
            //System.out.println(e);
            return null;
        }

    }
}
