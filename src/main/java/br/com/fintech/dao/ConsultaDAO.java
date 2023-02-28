package br.com.fintech.dao;

import br.com.fintech.exception.DBException;

public interface ConsultaDAO {
	
	double totalDespesa() throws DBException;
	double totalReceita() throws DBException;
}
