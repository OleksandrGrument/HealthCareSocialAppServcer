package com.HealthCareSocialAppServer.dao;

import com.HealthCareSocialAppServer.model.City;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("cityDao")
public class CityDaoImpl extends AbstractDao<Long, City> implements CityDao {
    @Override
    public Long create(City city) {
        Long id = (Long) getSession().save(city);
        return id;
    }

    @Override
    public City read(Long id) {
        City city = (City) getSession().get(City.class, id);
        return city;
    }

    @Override
    public List<City> findAll() {
        Query query = getSession().createQuery("from City");
        return query.list();
    }
}
