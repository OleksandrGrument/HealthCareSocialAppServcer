package com.ComeOnBaby.service;


import com.ComeOnBaby.dao.FertilizationGuideDao;
import com.ComeOnBaby.model.FertilizationGuide;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("fertilizationGuideService")
public class FertilizationGuideServiceImpl implements FertilizationGuideService {

    private FertilizationGuideDao fertilizationGuideDao;

    @Autowired(required = true)
    public void setCaseDao(FertilizationGuideDao fertilizationGuideDao) {
        this.fertilizationGuideDao = fertilizationGuideDao;
    }

    @Override
    @Transactional
    public void addNewFertilizationGuide(FertilizationGuide fertilizationGuide) {
        fertilizationGuideDao.create(fertilizationGuide);
    }

    @Override
    @Transactional
    public void updateFertilizationGuide(FertilizationGuide fertilizationGuide) {
        fertilizationGuideDao.update(fertilizationGuide);
    }

    @Override
    @Transactional
    public void deleteFertilizationGuide(FertilizationGuide fertilizationGuide) {
        fertilizationGuideDao.delete(fertilizationGuide);
    }

    @Override
    @Transactional(readOnly = true)
    public List<FertilizationGuide> getAllFertilizationGuide() {
        return fertilizationGuideDao.findAll();
    }

    @Override
    @Transactional
    public FertilizationGuide getFertilizationGuideById(Long id) {
        return fertilizationGuideDao.read(id);
    }
}