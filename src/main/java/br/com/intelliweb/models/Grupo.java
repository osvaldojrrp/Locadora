package br.com.intelliweb.models;

import org.springframework.security.core.GrantedAuthority;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by osvaldojunior on 02/09/15.
 */

@Entity
public class Grupo implements GrantedAuthority{

    @Id
    @GeneratedValue
    private long id;
    private String descrição;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDescrição() {
        return descrição;
    }

    public void setDescrição(String descrição) {
        this.descrição = descrição;
    }

    @Override
    public String getAuthority() {
        return getDescrição();
    }
}
