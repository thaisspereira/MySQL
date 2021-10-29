package br.org.generation.atvblogpessoal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.generation.atvblogpessoal.model.AtvblogpessoalModel;
import br.org.generation.atvblogpessoal.repository.atvBlogRepository;


@RestController
@RequestMapping ("/blogpessoal")
@CrossOrigin ("*")
public class atvBlogController {
	
	@Autowired
	
	private atvBlogRepository atvblogrepository;
	
	@GetMapping
	
	public ResponseEntity<List<AtvblogpessoalModel>>getAll(){
		return ResponseEntity.ok( atvblogrepository.findAll());
				
	}
	@GetMapping("/{id}")
	public ResponseEntity<AtvblogpessoalModel>GetById(@PathVariable long id){
		return atvblogrepository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	@GetMapping("/titulo/{titulo}")
	public ResponseEntity<Object> GetByTitulo(@PathVariable String titulo){
		return ResponseEntity.ok(atvblogrepository.findAllByTituloContainingIgnoreCase(titulo));
	}
	@PostMapping
	public ResponseEntity<AtvblogpessoalModel> post (@RequestBody AtvblogpessoalModel postagem){
		return ResponseEntity.status(HttpStatus.CREATED).body(atvblogrepository.save(postagem));
		
	}
	@PutMapping
	public ResponseEntity<AtvblogpessoalModel> put (@RequestBody AtvblogpessoalModel postagem){
		return ResponseEntity.status(HttpStatus.OK).body(atvblogrepository.save(postagem));
		
	}
			
	@DeleteMapping ("/{id}")
	public void delete (@PathVariable long id ) {
		atvblogrepository.deleteById(id);
	}
	
	


}
