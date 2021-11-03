package br.org.generation.atvblogpessoal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.org.generation.atvblogpessoal.model.Tema;

public interface TemaRepository extends JpaRepository<Tema, Long> {
	
	public List <Tema> findAllByDescricaoContainingIgnoreCase(String descricao);

}
