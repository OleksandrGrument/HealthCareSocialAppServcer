package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.FertilizationGuide;

import java.util.List;

public interface FertilizationGuideDao {

    Long create(FertilizationGuide fertilizationGuide);

    FertilizationGuide read(Long id);

    void update(FertilizationGuide fertilizationGuide);

    void delete(FertilizationGuide fertilizationGuide);

    List<FertilizationGuide> findAll();

}
