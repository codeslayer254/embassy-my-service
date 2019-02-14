package com.busyunit.embassy.service.repository;

import com.busyunit.embassy.service.model.Employee;
import com.busyunit.embassy.service.model.Navigation;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class NavigationRepositoryImpl implements NavigationRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Navigation> findAll() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Navigation> query = builder.createQuery(Navigation.class);
        Root<Navigation> root = query.from(Navigation.class);
        query.select(root).distinct(true);
        query.orderBy(builder.desc(root.get("datePublished")));
        TypedQuery<Navigation> allQuery = entityManager.createQuery(query);
        return allQuery.getResultList();
    }


}
