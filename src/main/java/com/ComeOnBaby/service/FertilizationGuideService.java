package com.ComeOnBaby.service;


import com.ComeOnBaby.model.FertilizationGuide;

import java.util.List;

public interface FertilizationGuideService {

    void addNewFertilizationGuide(FertilizationGuide fertilizationGuide);

    void updateFertilizationGuide(FertilizationGuide fertilizationGuide);

    void deleteFertilizationGuide(FertilizationGuide fertilizationGuide);

    List<FertilizationGuide> getAllFertilizationGuide();

    FertilizationGuide getFertilizationGuideById(Long id);
}
