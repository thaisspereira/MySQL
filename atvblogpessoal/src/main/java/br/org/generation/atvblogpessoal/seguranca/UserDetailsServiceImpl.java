package br.org.generation.atvblogpessoal.seguranca;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.org.generation.atvblogpessoal.model.Usuario;
import br.org.generation.atvblogpessoal.repository.UsuarioRepository;


@Service
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private UsuarioRepository userRespository;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		java.util.Optional<Usuario> user = userRespository.findByUsuario(userName);
	     user.orElseThrow(()-> new UsernameNotFoundException(userName + "not found."));
	     
	     return user.map(UserDetailsImpl :: new).get();
	}

}
