package com.ComeOnBaby.dao;

import com.ComeOnBaby.model.City;

import java.util.List;


public interface CityDao {

    Long create(City city);

    City read(Long id);

    void update(City city);

    void delete(City city);

    List<City> findAll();
}
