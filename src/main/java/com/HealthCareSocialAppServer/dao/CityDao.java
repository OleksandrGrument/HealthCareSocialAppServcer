package com.HealthCareSocialAppServer.dao;

import com.HealthCareSocialAppServer.model.City;

import java.util.List;


public interface CityDao {

    Long create(City city);

    City read(Long id);

    void update(City city);

    void delete(City city);

    List<City> findAll();
}
