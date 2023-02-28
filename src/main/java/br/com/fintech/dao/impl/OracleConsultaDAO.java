package br.com.fintech.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.fintech.dao.ConsultaDAO;
import br.com.fintech.exception.DBException;
import br.com.fintech.singleton.ConnectionManager;

public class OracleConsultaDAO implements ConsultaDAO{

	private Connection connect = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public double totalDespesa() throws DBException{
		
		double totalDespesa = 0;
		try {
			connect = ConnectionManager.getInstance().getConnection();
			pst = connect.prepareStatement("SELECT SUM(DS_VALOR) FROM T_MOV WHERE DS_CTG='despesa'");
			rs = pst.executeQuery();
			while (rs.next()) {
				totalDespesa = rs.getDouble(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DBException("ERRO AO BUSCAR DESPESAS!");
		} finally {
			try {
				pst.close();
				connect.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return totalDespesa;
	}


	public double totalReceita() throws DBException {
		
		double totalReceita = 0;
		try {
			connect = ConnectionManager.getInstance().getConnection();
			pst = connect.prepareStatement("SELECT SUM(DS_VALOR) FROM T_MOV WHERE DS_CTG='receita'");
			rs = pst.executeQuery();
			while (rs.next()) {
				totalReceita = rs.getDouble(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DBException("ERRO AO BUSCAR RECEITA!");
		} finally {
			try {
				pst.close();
				connect.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return totalReceita;
	}
	
}
