package com.example.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.studentModel;
@Repository
public interface studentRepo extends CrudRepository<studentModel, Integer> {

}
