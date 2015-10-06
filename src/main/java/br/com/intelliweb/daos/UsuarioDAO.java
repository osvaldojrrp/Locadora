package br.com.intelliweb.daos;

import br.com.intelliweb.models.Usuario;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import javax.persistence.TypedQuery;


/**
 * Created by osvaldojunior on 02/09/15.
 */

@Component
public class UsuarioDAO extends CrudDAO<Usuario> implements UserDetailsService {

    private final String FIND_BY_EMAIL = "SELECT u FROM Usuario u WHERE u.email = :p_email";

    public Usuario encontrarPeloEmail(String email) {
        TypedQuery<Usuario> query = this.em.createQuery(FIND_BY_EMAIL, Usuario.class);
        query.setParameter("p_email", email);

        List<Usuario> resultList = query.getResultList();

        return !resultList.isEmpty() ? resultList.get(0) : null;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return this.encontrarPeloEmail(username);
    }
}
