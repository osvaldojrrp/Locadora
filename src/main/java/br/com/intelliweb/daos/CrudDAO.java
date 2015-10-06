package br.com.intelliweb.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/**
 * Created by osvaldojunior on 09/05/15.
 */

public abstract class CrudDAO<T extends Serializable> {

    @PersistenceContext
    protected EntityManager em;

    private Class<T> type;

    public CrudDAO() {
        ParameterizedType pt = (ParameterizedType) getClass().getGenericSuperclass();
        type = (Class<T>) pt.getActualTypeArguments()[0];
    }

    public T create(final T t) {
        this.em.persist(t);
        this.em.flush();
        return t;
    }

    public void create(final Collection<T> t) {
        for (T t2 : t) {
            this.em.persist(t2);
        }

        this.em.flush();
    }

    public void delete(final Object id) {
        T entity = this.em.find(type, id);
        this.em.remove(entity);
    }

    public T find(final Object id) {
        return (T) this.em.find(type, id);
    }

    public T update(final T t) {
        if (t != null) {
            this.em.merge(t);
            this.em.flush();
        }

        return t;
    }

    public void update(final Collection<T> t){
        for (T t2 : t) {
            this.em.merge(t2);
        }

        this.em.flush();
    }

    public void abrirTransacao() {
        this.em.getTransaction().begin();
    }

    public void fecharTransacao() {
        this.em.close();
    }

    public void commit() {
        this.em.getTransaction().commit();
    }

    public List<T> list(Integer startIdx, Integer listSize, Map<String, Object> criterias, String orderBy) {

        final StringBuffer queryString = new StringBuffer("from ");
        queryString.append(type.getName());

        String step = "where";
        List<Object> arguments = new ArrayList<Object>();
        int idx = 1;
        if(criterias != null) {
            for(Entry<String, Object> item: criterias.entrySet()) {
                queryString.append(step + item.getKey() + " = ? " + idx++);
                step = " and ";
                arguments.add(item.getValue());
            }
        }

        if (orderBy != null)
            queryString.append(" ORDER BY ").append(orderBy);

        TypedQuery<T> query = this.em.createQuery(queryString.toString(), type);
        idx = 1;

        for(Object argument : arguments) {
            query = query.setParameter(idx, argument);
        }

        if (startIdx != null) {
            query.setFirstResult(startIdx);
        }

        if (listSize != null) {
            query.setMaxResults(listSize);
        }

        return query.getResultList();
    }

    public List<T> listAll() {
        return list(null, null, null, null);
    }

}
